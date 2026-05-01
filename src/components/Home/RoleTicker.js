import React from "react";
import Typewriter from "typewriter-effect";

function RoleTicker() {
  return (
    <Typewriter
      options={{
        strings: [
          "Audio Director",
          "Sound Designer",
          "Composer",
          "Technical Audio Designer",
        ],
        autoStart: true,
        loop: true,
        deleteSpeed: 50,
      }}
    />
  );
}

export default RoleTicker;
