import React from "react";

type Props = {};

const LoginPage = (props: Props) => {
  return (
    <div className="h-[cal(100vh-6rem)] p-4 md:h-[cal(100vh-9rem)] flex items-center flex-col justify-center w-full">
      <h2>Please provide your credentials to login</h2>
      <div className="">
        <form action="" className="flex flex-col gap-4 w-full">
          <div>
            <label htmlFor="email">
              <div>Email</div>
              <input
                type="email"
                id="email"
                className="rounded px-3 py-2 text-black"
              />
            </label>
          </div>
          <div>
            <label htmlFor="password">
              <div>Password</div>
              <input
                type="password"
                id="password"
                className="rounded px-3 py-2 text-black"
              />
            </label>
          </div>
        </form>
      </div>
    </div>
  );
};

export default LoginPage;
