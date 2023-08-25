import Link from "next/link";
import React from "react";
import { navLinks } from "@/constants/constants";
const NavLinks = () => {
  return (
    <ul className="flex gap-4 capitalize ">
      {navLinks.map((link) => {
        return (
          <li
            key={link.href}
            className="hover:text-red-600 transition-colors duration-300"
          >
            <Link href={link.href}>{link.label}</Link>
          </li>
        );
      })}
    </ul>
  );
};

export default NavLinks;
