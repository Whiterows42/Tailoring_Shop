<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>

    <style>
      @import url("https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=Roboto:wght@300;400;500&display=swap");
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      :root {
        --bg-primary: #000000;
        --bg-secondary: #111111;
        --text-primary: #ffffff;
        --text-secondary: #b0b0b0;
        --accent: #00ffff;
      }
      body {
        font-family: "Roboto", sans-serif;
        background-color: var(--bg-primary);
        color: var(--text-primary);
        line-height: 1.6;
        width: 100%;
        height: 100vh;
      }

      .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 2rem 2rem;
      }
      nav {
        display: flex;
        justify-content: space-between;
        align-items: center;
      }
      nav .brandname {
        font-family: "Playfair Display", serif;
        letter-spacing: 2px;
      }
      nav ul {
        display: flex;
        justify-content: flex-end;
        list-style-type: none;
      }

      nav ul li {
        margin-left: 2rem;
      }

      nav ul li a {
        color: var(--text-primary);
        text-decoration: none;
        font-weight: 500;
        transition: color 0.3s ease;
      }

      nav ul li a:hover {
        color: var(--accent);
      }
      main {
        padding: 0 10rem;
      }
      .RegisterSection {
        height: 100%;
        width: 100%;
        background-color: var(--bg-secondary);
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 5rem 10rem;
        gap: 40px;
        flex-direction: column;
      }
      .input-group {
        width: 100%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: 30px;
      }
      input{
        width: 100%;
        padding: 0.75rem;
        border: 1px solid var(--text-secondary);
        border-radius: 4px;
        background-color: var(--bg-secondary);
        color: var(--text-primary);
        font-size: 1rem;
        transition: transform 1s ;
      }
      input:focus{
         outline: none;
        border-color: var(--accent);
      }
       button {
        background-color: var(--accent);
        color: var(--bg-primary);
        border: none;
        padding: 0.75rem 1.5rem;
        border-radius: 4px;
        cursor: pointer;
        font-size: 1rem;
        font-weight: 600;
        text-transform: uppercase;
        letter-spacing: 1px;
        display: flex;
        justify-content: center;
      }

      button:hover {
        background-color: #00cccc;
      }
      a{
        text-decoration: none;
        color: var(--accent);
      }
    </style>
  </head>
  <body>
    <header>
      <div class="container">
        <nav>
          <div class="brandname"><h1>Tailoring Shop</h1></div>
          <ul>
            <li><a href="home">Home</a></li>
            <li><a href="#features">Features</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#contact">Contact</a></li>
            <li>
              <a href="admin/loginUser" class="btn">Login</a>
            </li>
          </ul>
        </nav>
      </div>
    </header>
    <main>
      <form action="verify-user" method="post">
      <section class="RegisterSection">
        <div>
        <h3>${error}</h3>
          <h1 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif; letter-spacing: 2px;">Login</h1>
        </div>
        <div class="input-group">
          <input type="text" name="email" required="required" placeholder="Enter  Email" />
          
        </div>
        <div class="input-group">
          <input type="text" name="password" required="required" placeholder="Enter password" />
          
        </div>
        
         <div style="display: flex; justify-content: center;" class="input-btn">
            <button type="submit">login</button>
         </div>
         <div>
            <p>Dont have an account ? <a href="registerUser">Register  here</a> </p>
         </div>
      </section>
         </form>
    </main>
  </body>
</html>