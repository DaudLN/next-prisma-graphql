import React from "react";

type Props = {
  action: string | React.ReactNode;
  type: "primary" | "secondary";
};

const buttonClass = (type: "primary" | "secondary") => {
  if (type === "primary") return "bg-red-500 hover:bg-red-600";
  if (type === "secondary") return "bg-green-500 hover:bg-green-600";
};

const Button = ({ action, type }: Props) => {
  return <button className={buttonClass(type)}>{action}</button>;
};

export default Button;
