<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <title>Smile</title>
  <link class="rounded-5" rel="shortcut icon" href="./assets//5172140.jpg" type="image/x-icon" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;1,500&family=Roboto:wght@300;400&display=swap"
    rel="stylesheet" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
  <link rel="stylesheet" href="style.css" />
  <script src="https://cdn.jsdelivr.net/npm/framer-motion@10.16.1/dist/framer-motion.min.js"></script>
  
  <!-- <script src="https://cdn.jsdelivr.net/npm/framer-motion@10.15.2/dist/framer-motion.min.js"></script> -->
</head>

<body >
<div class="cursor-pointer" data-cursor-dot></div>
    <div class="cursor" data-cursor-outline></div>
<div class="custom-shape-divider-top-1692163266 ">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
      <path
        d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z"
        opacity=".25" class="shape-fill"></path>
      <path
        d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z"
        opacity=".5" class="shape-fill"></path>
      <path
        d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z"
        class="shape-fill"></path>
    </svg>
  </div>
  <%@include file="navbar.jsp" %>
  <!-- hero section -->
  <section
  	    class="position-relative mt-sm-5 gap-5 gap-sm-5 hero col-lg-12 d-sm-flex flex-lg-row flex-sm-column mt-sm-auto ">
    <div class="left">
      <h1 class="">Student Information</h1>
      <p>Your information is very important for us and you</p>
      <p>Dreams give you motivation
        and <span style="color: orange;">education</span> education to Complete it.</p>
      <div class="gap-2 mx-3 buttons">
        <a href="/Student_Portal/register.jsp">
          <button class="btn btn-primary me-5 register">
            Register your self
          </button>
        </a>
        <a href="/Student_Portal/studentsList.jsp">

          <button class="btn btn-success">See our student's</button>
        </a>
      </div>
    </div>
    <div class="right">
      <img class="background" src="./assets//Saly-1.svg" alt="saly" width="700" height="1000" />
    </div>
  </section>
  <!-- about college -->

  <section>
    <h1 class="text-center position-relative mb-5">About us</h1>
    <article class="d-flex align-items-center flex-sm-column flex-lg-row">
      <div class="position-relative container">
        <img id="boy" class="boy" src="./assets//boy.svg" alt="boy" width="700" height="700">
      </div>
      <p class="gap-1s paragraph mx-sm-5 my-sm-2">
        Dreams give you motivation and education to complete it.
        MITT is situated at a beautiful, enchanting and sparwling landscape. The institute is founded by a group of
        eminent people recognised for their eminence in the field of science and engineering technology. Many of them
        have served at the highest levels of AICTE and Univesrity.
        The college is equipped with all modern learning aids to make teaching-learning process a pleasure. The highly
        qualified staff is its asset.
        If you are interested in a quality, Maharaja Institute of Technology Thandavapura is the place for you. MIT
        Thandavapura is a career-focused college that will provide you with a comprehensive educational experience in a
        variety of growing areas of employment.
      </p>
    </article>
  </section>
  <!-- footer -->
  <%@include file="footer.jsp" %>
  <!-- scripts -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.9.1/gsap.min.js"></script>
  <script>
  const cursorDot = document.querySelector("[data-cursor-dot]");
  const cursorOutline = document.querySelector("[data-cursor-outline]");

  window.addEventListener("mousemove", (e) => {
    const x = e.clientX;
    const y = e.clientY;

    cursorDot.style.left = `${x}px`;
    cursorDot.style.top = `${y}px`;
    cursorOutline.style.left = `${x}px`;
    cursorOutline.style.top = `${y}px`;
  });
  </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
    crossorigin="anonymous"></script>
  <script async src="https://unpkg.com/es-module-shims@1.6.3/dist/es-module-shims.js"></script>

  </body>

</html>