/* eslint-disable react/prop-types */
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
    <ResponsiveContainer width="100%" height="100%">
      <ComposedChart
        // width={500}
        // height={300}
        data={data}
        margin={{
          top: 25,
          right: 30,
          left: 0,
          bottom: 5,
        }}
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
        <Legend align="center" width="100%" />
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

export default ChartEnrConTre;
