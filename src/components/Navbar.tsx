import React from "react";
import NavLinks from "./NavLinks";
import Link from "next/link";
const Navbar = () => {
  return (
    <header className="w-full text-white z-[999] top-0 bg-white">
      <div className="flex justify-center bg-red-500 p-[0.3rem]">
        <p>Free delivery for all orders over $50. Order your food now!</p>
      </div>
      <nav className="flex w-full items-center justify-center md:justify-between py-3 px-8 md:px-24 text-red-500 border-b-2 border-b-red-500">
        <div className="hidden md:flex">
          <NavLinks />
        </div>
        <div>
          <h1 className="font-bold text-3xl">Savor Delights</h1>
        </div>
        <div className="hidden md:gap-4 md:flex">
          <Link href="/login">Login</Link>
          <Link href="/login">Cart</Link>
        </div>
      </nav>
    </header>
  );
};

export default Navbar;
