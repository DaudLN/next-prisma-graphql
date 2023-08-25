import Image from "next/image";
import React from "react";
import Button from "./Button";

const Welcome = () => {
  return (
    <div className="md:grid flex bg-red-100 flex-col-reverse w-full grid-cols-1 md:grid-cols-12 items-center md:justify-center justify-center gap-8">
      <div className="md:col-span-5  flex flex-col items-center md:col-start-1 p-2 md:p-8">
        <h2 className="welcome-message text-2xl md:text-3xl md:tracking-wider md:uppercase md:text-center lg:text-5xl mb-8 font-bold text-red-500">
          Experience Flavors That Excite Your Palate!
        </h2>
        <Button action="Order Now" type="primary" />
      </div>
      <div className="md:col-span-7 md:col-start-6">
        <Image
          src="/images/barner-image.jpg"
          width={500}
          height={500}
          alt="Barner image"
          className="w-full object-contain h-full"
        />
      </div>
    </div>
  );
};

export default Welcome;
