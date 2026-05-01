import React from "react";
import { Container, Row, Col } from "react-bootstrap";
import myImg from "../../Assets/avatar.svg";
import Tilt from "react-parallax-tilt";

function Home2() {
  return (
    <Container fluid className="home-about-section" id="about">
      <Container>
        <Row>
          <Col md={8} className="home-about-description">
            <h1 style={{ fontSize: "2.6em" }}>
              <b>hello!</b>
            </h1>
            <p className="home-about-body">
              My name is Mason Victoria and I am a Toronto-based composer and sound designer for video games, film and television. 
			  I also compose and arrange small and large ensemble music for live performance. Currently, I am an Technical Game Sound 
			  Designer at Warner Brothers Post-Production Creative Services. 
              <br />
              <br />
              This website outlines some of my freelance work and ongoing projects as well as houses my reels. 
			  Feel free to contact me through the 'ABOUT' page if you'd like to get in touch!
            </p>
          </Col>
          <Col md={4} className="myAvtar">
            <Tilt>
              <img src={myImg} className="img-fluid" alt="avatar" />
            </Tilt>
          </Col>
        </Row>
      </Container>
    </Container>
  );
}
export default Home2;
