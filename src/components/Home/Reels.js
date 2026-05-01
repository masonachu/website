import React from "react";

export default function VideoSection() {
  return (
    <div className="video-container">
      {/* Top video */}
      <div className="video-full">
        <iframe
          src="https://player.vimeo.com/video/739765376?title=0&byline=0&portrait=0"
          allow="autoplay; fullscreen; picture-in-picture"
          allowFullScreen
          title="Main video"
        />
      </div>

      {/* Bottom row */}
      <div className="video-row">
        <div className="video-half">
          <iframe
            src="https://player.vimeo.com/video/729712497?title=0&byline=0&portrait=0"
            allowFullScreen
            title="Video left"
          />
        </div>

        <div className="video-half">
          <iframe
            src="https://player.vimeo.com/video/731488316?title=0&byline=0&portrait=0"
            allowFullScreen
            title="Video right"
          />
        </div>
      </div>
    </div>
  );
}