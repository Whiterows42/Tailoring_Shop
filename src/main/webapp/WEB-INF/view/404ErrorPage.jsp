<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>404</title>
    <style>
      body,
      html {
        margin: 0;
        padding: 0;
        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
          Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
        background-color: #000;
        color: #fff;
        height: 100vh;
        overflow: hidden;
      }

      .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        perspective: 1000px;
      }

      .error-message {
        font-size: 2rem;
        text-align: center;
        margin-bottom: 2rem;
        opacity: 0;
        animation: fadeIn 2s ease-out forwards;
      }

      .error-code {
        font-size: 8rem;
        font-weight: bold;
        color: #ff3b30;
        text-shadow: 0 0 10px rgba(255, 59, 48, 0.7);
        animation: glitch 5s infinite;
      }

      .retry-button {
        padding: 1rem 2rem;
        font-size: 1.2rem;
        background-color: rgba(255, 255, 255, 0.1);
        border: 2px solid #fff;
        color: #fff;
        border-radius: 30px;
        cursor: pointer;
        transition: all 0.3s ease;
        opacity: 0;
        animation: fadeIn 2s ease-out 1s forwards;
      }

      .retry-button:hover {
        background-color: rgba(255, 255, 255, 0.2);
        transform: scale(1.05);
      }

      .floating-shapes {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        pointer-events: none;
        z-index: -1;
      }

      .shape {
        position: absolute;
        opacity: 0.5;
        animation: float 20s infinite linear;
      }

      @keyframes fadeIn {
        to {
          opacity: 1;
        }
      }

      @keyframes glitch {
        0% {
          transform: translate(0);
        }
        20% {
          transform: translate(-5px, 5px);
        }
        40% {
          transform: translate(-5px, -5px);
        }
        60% {
          transform: translate(5px, 5px);
        }
        80% {
          transform: translate(5px, -5px);
        }
        100% {
          transform: translate(0);
        }
      }

      @keyframes float {
        0% {
          transform: translateY(0) rotate(0deg);
        }
        100% {
          transform: translateY(-1000px) rotate(720deg);
        }
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="error-message">Oops! Something went wrong</div>
      <div class="error-code">404</div>
      <button class="retry-button" onclick="location.reload()">Retry</button>
    </div>

    <svg
      class="floating-shapes"
      width="100%"
      height="100%"
      xmlns="http://www.w3.org/2000/svg"
    >
      <circle
        class="shape"
        cx="10%"
        cy="10%"
        r="20"
        fill="#ff3b30"
        style="animation-duration: 15s"
      />
      <rect
        class="shape"
        x="80%"
        y="60%"
        width="40"
        height="40"
        fill="#5ac8fa"
        style="animation-duration: 18s"
      />
      <polygon
        class="shape"
        points="50,5 95,97 5,97"
        fill="#ffcc00"
        style="animation-duration: 20s"
      />
      <circle
        class="shape"
        cx="70%"
        cy="50%"
        r="15"
        fill="#34c759"
        style="animation-duration: 22s"
      />
      <rect
        class="shape"
        x="20%"
        y="80%"
        width="30"
        height="30"
        fill="#af52de"
        style="animation-duration: 25s"
      />
    </svg>

    <script>
      document.addEventListener("DOMContentLoaded", (event) => {
        const container = document.querySelector(".container");

        container.addEventListener("mousemove", (e) => {
          const xAxis = (window.innerWidth / 2 - e.pageX) / 25;
          const yAxis = (window.innerHeight / 2 - e.pageY) / 25;
          container.style.transform = `rotateY(${xAxis}deg) rotateX(${yAxis}deg)`;
        });

        container.addEventListener("mouseleave", (e) => {
          container.style.transform = "rotateY(0deg) rotateX(0deg)";
        });
      });
    </script>
  </body>
</html>
