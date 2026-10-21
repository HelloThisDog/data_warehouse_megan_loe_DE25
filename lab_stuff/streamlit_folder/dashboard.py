import streamlit as st
from connect_dashboard import query_flight_departures

def layout():
    df = query_flight_departures()

    st.title("flight departures for arlanda")
    st.write(
        "this dashboard shows the departures from stockholm arlanda, and has the ability to show what flight were on time"
    )

    st.markdown("## departure total")
    cols = st.columns(2)

    with cols[0]:
        st.metric(label="on time", value=df[df["ON_TIME"] == "Yes"].shape[0])

    with cols[1]:
        st.metric(label="delayed", value=df[df["ON_TIME"] == "No"].shape[0])
    
    st.markdown("## raw flight data")
    st.dataframe(df)
if __name__ == "__main__":
    layout()