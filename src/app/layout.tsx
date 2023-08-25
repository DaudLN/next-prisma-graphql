import Navbar from "@/components/Navbar";
import "./globals.css";
import type { Metadata } from "next";
import { Plus_Jakarta_Sans } from "next/font/google";

const plusJakartSans = Plus_Jakarta_Sans({ subsets: ["latin"] });

export const metadata: Metadata = {
  title: "Savor Delights: A Culinary Journey of Exquisite Flavors",
  description:
    "Experience a gastronomic journey like no other at Savor Delights, where culinary artistry meets impeccable service. Indulge in a world of flavors, from meticulously crafted dishes to sumptuous desserts, all served in an elegant ambiance that redefines dining. Join us for a culinary adventure that tantalizes the senses and leaves you craving for more.",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body className={plusJakartSans.className}>
        <Navbar />
        {children}
      </body>
    </html>
  );
}
