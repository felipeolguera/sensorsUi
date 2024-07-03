/* eslint-disable no-unused-vars */
/* eslint-disable react/prop-types */
import React from "react";
import { color, motion } from "framer-motion";
import {
  Line,
  Bar,
  Rectangle,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ComposedChart,
  ResponsiveContainer,
} from "recharts";

const SectionCard = ({ item, handleCalloutClick, title, value, unit }) => {
  return (
    <motion.div
      className="sectioncardnew"
      variants={item}
      onClick={handleCalloutClick}
      style={{ width: "697px", height: "302px" }}
    >
      <div className="cardheaderbg__charts">
        <h3 style={{ fontSize: "24px" }}>{title}</h3>
      </div>
      <div className="cardbodynew" style={{ top: "85px", width: "679px" }}>
        <div className="cardtopleft" style={{ width: "137px", height: "96px" }}>
          <div className="value">{value}</div>
          <div
            className="unit"
            style={{ width: "137px", height: "34px", top: "49px" }}
          >
            <p>{unit}</p>
          </div>
        </div>
        <div
          className="cardtopright"
          style={{ width: "531px", height: "201px" }}
        >
          <div className="scChart" style={{ margin: "0" }}>
            {/* <ChartEnrConTre /> */}

            <img
              alt=""
              src="../chart__1.png"
              width="447px"
              className="chart__placeholder"
            />
          </div>
        </div>
      </div>
    </motion.div>
  );
};

function ChartEnrConTre() {
  const data = [
    {
      name: "Jan",
      Savings: 14,
      Consumption: 11,
    },
    {
      name: "Feb",
      Savings: 27,
      Consumption: 13,
    },
    {
      name: "Mar",
      Savings: 27,
      Consumption: 19,
    },
    {
      name: "Apr",
      Savings: 33,
      Consumption: 21,
    },
    {
      name: "May",
      Savings: 39,
      Consumption: 21,
    },
    {
      name: "Jun",
      Savings: 40,
      Consumption: 23,
    },
    {
      name: "Jul",
      Savings: 43,
      Consumption: 21,
    },
    {
      name: "Aug",
      Savings: 40,
      Consumption: 22,
    },
    {
      name: "Sep",
      Savings: 43,
      Consumption: 19,
    },
    {
      name: "Oct",
      Savings: 40,
      Consumption: 17,
    },
    {
      name: "Nov",
      Savings: 30,
      Consumption: 15,
    },
    {
      name: "Dec",
      Savings: 27,
      Consumption: 16,
    },
  ];

  const CustomTooltip = ({ active, payload, label }) => {
    if (active && payload && payload.length) {
      return (
        <div className="custom-tooltip">
          <p className="label">{`${label} `}</p>

          <p className="label">{`Savings : ${payload[0].value}`}</p>
          <p className="label">{`Consumption : ${payload[1].value}`}</p>
        </div>
      );
    }

    return null;
  };

  return (
    <ResponsiveContainer width="110%" height="100%">
      <ComposedChart
        // width={500}
        // height={300}
        data={data}
        // margin={{
        //   top: 15,
        //   right: 30,
        //   left: 0,
        //   bottom: 5,
        // }}
      >
        <defs>
          <linearGradient id="colorUv" x1="0" y1="0" x2="0" y2="1">
            <stop offset="5%" stopColor="#08596080" stopOpacity={1} />
            <stop offset="95%" stopColor="#08596080" stopOpacity={0} />
          </linearGradient>

          <linearGradient id="colorPv" x1="0" y1="0" x2="0" y2="1">
            <stop offset="5%" stopColor="#82ca9d" stopOpacity={1} />
            <stop offset="95%" stopColor="#82ca9d" stopOpacity={0} />
          </linearGradient>
        </defs>

        <CartesianGrid strokeDasharray="1 6" stroke="#82ca9d3a" color="#fff" />
        <XAxis dataKey="name" />
        <YAxis />
        {/* <Legend align="center" width="100%" /> */}
        <Tooltip content={<CustomTooltip />} />
        <Bar
          name="Savings"
          dataKey="Savings"
          fill="url(#colorUv)"
          activeBar={<Rectangle fill="url(#colorPv)" />}
        />
        <Line dataKey="Consumption" stroke="#ff7300" />
      </ComposedChart>
    </ResponsiveContainer>
  );
}

export default SectionCard;
