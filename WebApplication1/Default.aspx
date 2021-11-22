<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<!DOCTYPE html>
<html>
<title>Paweł Klis, nice to meet You!</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    body, h1, h2, h3, h4, h5, h6 {
        font-family: "Montserrat", sans-serif
    }

    .w3-row-padding img {
        margin-bottom: 12px
    }
    /* Set the width of the sidebar to 120px */
    .w3-sidebar {
        width: 120px;
        background: #222;
    }
    /* Add a left margin to the "page content" that matches the width of the sidebar (120px) */
    #main {
        margin-left: 120px
    }
    /* Remove margins from "page content" on small screens */
    @media only screen and (max-width: 600px) {
        #main {
            margin-left: 0
        }
    }
</style>
<body class="w3-black">
    <form id="formMain" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<!-- Icon Bar (Sidebar - hidden on small screens) -->
<nav class="w3-sidebar w3-bar-block w3-small w3-hide-small w3-center">
  <!-- Avatar image in top left corner -->
  <img src="images/portrait2.jpg" style="width:100%">
  <a href="#" class="w3-bar-item w3-button w3-padding-large w3-black">
    <i class="fa fa-home w3-xxlarge"></i>
    <p>HOME</p>
  </a>
  <a href="#about" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-user w3-xxlarge"></i>
    <p>ABOUT</p>
  </a>
  <a href="#skills" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-align-left w3-xxlarge"></i>
    <p>Skills</p>
  </a>
  <a href="#projects" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-chain w3-xxlarge"></i>
    <p>Projects</p>
  </a>
  <a href="#photos" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-eye w3-xxlarge"></i>
    <p>PHOTOS</p>
  </a>
  <a href="#contact" class="w3-bar-item w3-button w3-padding-large w3-hover-black">
    <i class="fa fa-envelope w3-xxlarge"></i>
    <p>CONTACT</p>
  </a>
</nav>

<!-- Navbar on small screens (Hidden on medium and large screens) -->
<div class="w3-top w3-hide-large w3-hide-medium" id="myNavbar">
  <div class="w3-bar w3-black w3-opacity w3-hover-opacity-off w3-center w3-small">
    <a href="#" class="w3-bar-item w3-button" style="width:25% !important">HOME</a>
    <a href="#about" class="w3-bar-item w3-button" style="width:25% !important">ABOUT</a>
    <a href="#photos" class="w3-bar-item w3-button" style="width:25% !important">PHOTOS</a>
    <a href="#contact" class="w3-bar-item w3-button" style="width:25% !important">CONTACT</a>
  </div>
</div>

    <style>
        .image-blurred-edge {
            background-color: black;
            box-shadow: 0 0 5px 10px black;
        }

        html {
            scroll-behavior: smooth;
        }
    </style>
    <style>
        @keyframes skill1 {
            from {
                width: 0%;
            }

            to {
                width: 100%;
            }
        }

        @keyframes showopacity {
            from {
                opacity: 0;
            }

            to {
                opacity: 1;
            }
        }

        .anim {
            animation-name: skill1;
            animation-duration: 5s;
            animation-timing-function: ease-in-out;
        }

        .reaveal {
            visibility: visible;
        }
    </style>
        <script>
            window.addEventListener("scroll", reveal);

            function reveal() {
                var reveals = document.querySelectorAll(".reaveal");

                for (var i = 0; i < reveals.length; i++) {
                    var windowHeight = window.innerHeight;
                    var elementTop = reveals[i].getBoundingClientRect().top;
                    var elementVisible = 150;

                    if (elementTop < windowHeight) {
                        reveals[i].classList.add("anim");
                    } else {
                        reveals[i].classList.remove("anim");
                    }
                }
            }
        </script>
<!-- Page Content -->
    <div class="w3-padding-large" id="main">
        <div style="height: 850px;">
            <!-- Header/Home -->
            <header class="w3-container w3-padding-32 w3-center w3-left w3-black w3-half" id="home">
                <h1 class="w3-jumbo"><span class="w3-hide-small">I'm</span> Paweł Klis</h1>
                <p>There is no one who does not improve the world...</p>
                <img src="images/portrait2.jpg" alt="boy" class="w3-image image-blurred-edge" width="613" height="750">
            </header>



            <!-- About Section -->
            <div class="w3-content w3-justify w3-text-grey w3-padding-64 w3-half" id="about">
                <div style="opacity:1; animation-name:showopacity;animation-duration:3s;animation-delay:0s; ">
                <h2 class="w3-text-light-grey">My Name</h2>
                <hr style="width: 200px" class="w3-opacity">
                <p>
<%--                    Nazywam się Paweł Klis. Programowaniem zainteresowałem się w wieku 15-16 lat, gdy zacząłem pisać pierwsze proste fragmenty kodu w VB6 oraz w VBA  MS Excel i Access.
                    Tworzenie oprogramowania traktowałem jako hobby do momentu, gdy w wieku około 22 lat zarobiłem na pierwszej aplikacji. Później pojawiły się kolejne zlecenia, m.in system magazynowy, 
                    system do fakturowania. W swojej zawodowej pracy również automatyzowałem swoje działania, pisząc proste programy, które generowały gotowe zestawienia. Tak powstał System Informacji Operacyjnej, 
                    który zastąpił ewidencje papierowe i sprawozdawczość formą elektroniczną. System pozwolił na ogromne oszczędności czasu, jednocześnie będąc dla mnie ogromnym skokiem w 
                    tworzeniu aplikacji, przestrzenią w której mogłem się rozwijać i uczyć. Bardzo szybko przyswajam nową wiedzę, a nowe wyzwania działają na mnie motywująco.--%>
                    My name is Paweł Klis. I became interested in programming at the age of 15-16, when I started writing the first simple code fragments in VB6 and in VBA MS Excel and Access. I treated software development as a hobby until I earned money on my first application at the age of about 22. Later, further orders appeared, m.in warehouse system, invoicing system. In my professional work, I also automated my activities by writing simple programs that generated ready-made statements. This is how the Operational Information System was created, which replaced paper records and reporting in electronic form. The system allowed for huge time savings, while being for me a huge leap in creating applications, a space in which I could develop and learn. I acquire new knowledge very quickly, and new challenges motivate me. 
                </p>
                </div>


                <div class="w3-row-padding" style="margin: 0 -16px;opacity:1; animation-name:showopacity;animation-duration:6s;animation-delay:0s; " >
                    <h3 class="w3-text-light-grey">At work: Lean Six Sigma Project Manager, Lean Leader</h3>
                    <hr style="width: 200px" class="w3-opacity">
                    <p>
         <%--               Prowadzenie projektów z wykorzystaniem metodologii Lean (m.in. Kaizen, PDCA, DMAIC), tworzenie map procesów z wykorzystaniem notyfikacji BPMN, 
                        prowadzenie i wdrażanie projektów o zasięgu ogólnokrajowym. 
                        Praca i zarządanie w różnych zespołach w zależności od prowadzonego projektu. Optymalizacja procesów, eliminacja MUDA.--%>
                        Conducting projects using the Lean methodology (m.in Kaizen, PDCA, DMAIC), creating process maps using BPMN notifications, conducting and implementing nationwide projects. Work and management in different teams depending on the project. Process optimization, elimination of MUDA. 
                    </p>
                </div>
                <div class="w3-row-padding" style="margin: 0 -16px;opacity:1; animation-name:showopacity;animation-duration:9s;animation-delay:0s;">
                    <h3 class="w3-text-light-grey">After work: .Net Developer</h3>
                    <hr style="width: 200px" class="w3-opacity">
                    <p>
<%--                        Wykonywanie projektów IT, liczne programy do fakturowania, programy magazynowe i wspierające prowadzenie biznesu wykonywane na zlecenie zamawiających. Integracje oprogramowania z istniejącym środowiskiem klienta,
                        wsparcie techniczne i doradcze. Niniejsza strona prezentuje część moich umiejętności, oparta jest o wzorzec W3Schools aby pokazać, że potrafię pracować z utworzonym już kodem. Całość działa w środowisku ASP. NET Web Forms,
                        Dane prezentowane na stronie, pochodzą z bazy danych MS SQL za pośrednictwem Entity Framework. Całość kodu dostępna jest na GitHub (link na końcu strony).--%> 
                        Execution of IT projects, numerous invoicing programs, warehouse and business support programs performed on behalf of ordering parties. Software integration with the existing customer environment, technical and consulting support. This web page presents some of my skills, it is based on the W3Schools pattern to show that I can work with the already created code. The whole works in the ASP environment. NET Web Forms, the data presented on the site, comes from the MS SQL database through the Entity Framework. All the code is available on GitHub (link at the end of the page). 
                    </p>
                </div>
                <div class="w3-row-padding" style="margin: 0 -16px; opacity: 1; animation-name: showopacity; animation-duration: 9s; animation-delay: 0s;">
                    <h3 class="w3-text-light-grey">Who am I</h3>
                    <hr style="width: 200px" class="w3-opacity">
                    <p>
             <%--           Jestem osobą, która w pełni spełniła się na zawodowej ścieżce kariery. Zdobyłem zawodowe doświadczenie w optymalizacji procesów i redukcji kosztów
                        w jednej z największych firm logistycznych działających w Polsce. Równolegle, samodzielnie zdobywałem wiedzę i doświadczenie w tworzeniu oprogramowania. Wszystkie nabyte umiejętności w połączeniu z moją
                        wrodzoną kreatywnością, mam nadzieję, znajdą uznanie w oczach nowego pracodawcy. Jestem otwarty na nowe propozycje, nowe wyzwania i szanse pokazania w pełni mojego potencjału.--%>
                        I am a person who has fully fulfilled myself on the professional career path. I gained professional experience in process optimization and cost reduction in one of the largest logistics companies operating in Poland. At the same time, I independently gained knowledge and experience in software development. All the skills acquired, combined with my innate creativity, I hope, will find recognition in the eyes of the new employer. I am open to new proposals, new challenges and opportunities to show my full potential. 
                    </p>
                </div>

            </div>
        </div>

    <div class="w3-content w3-justify w3-text-grey w3-padding-64" id="skills">
       <h3 class="w3-padding-16 w3-text-light-grey">My skills</h3>
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-half w3-margin-bottom">
             <h3 class="w3-padding-16 w3-text-light-grey">Skills</h3>

          <asp:Repeater ID="repeaterSkills" runat="server" OnItemDataBound="repeaterSkills_ItemDataBound">
              <ItemTemplate>
                  <p class="w3-wide"><%#Eval("name") %></p>
                  <div class="w3-white">
                      <asp:panel id="progressDV" runat="server" class="w3-dark-grey reaveal anim" style="height: 28px;" ToolTip='<%#Eval("value") %>'></asp:panel>
                  </div>
              </ItemTemplate>
          </asp:Repeater>

<%--      <p class="w3-wide">.Net C#</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; max-width: 65%;"></div>
      </div>
      <p class="w3-wide">.Net VB</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; max-width: 65%;"></div>
      </div>
      <p class="w3-wide">ASP .Net</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 40%;"></div>
      </div>
      <p class="w3-wide">Xamarin</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 25%;"></div>
      </div>
      <p class="w3-wide">HTML</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 80%;"></div>
      </div>
      <p class="w3-wide">CSS</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 35%;"></div>
      </div>
      <p class="w3-wide">JavaScript</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 35%;"></div>
      </div>
      <p class="w3-wide">Sql</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 60%;"></div>
      </div>
            <p class="w3-wide">NoSql</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 45%;"></div>
      </div>--%>
      </div>

      <div class="w3-half">
             <h3 class="w3-padding-16 w3-text-light-grey">Tools</h3>

                    <asp:Repeater ID="repeaterTools" runat="server" OnItemDataBound="repeaterTools_ItemDataBound">
              <ItemTemplate>
                  <p class="w3-wide"><%#Eval("name") %></p>
                  <div class="w3-white">
                      <asp:panel id="progressDV" runat="server" class="w3-dark-grey reaveal anim" style="height: 28px;" ToolTip='<%#Eval("value") %>'></asp:panel>
                  </div>
              </ItemTemplate>
          </asp:Repeater>

      <%--<p class="w3-wide">Visual Studio</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; max-width: 90%;"></div>
      </div>
      <p class="w3-wide">GIT</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; max-width: 35%;"></div>
      </div>
      <p class="w3-wide">MySql Workbench</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 60%;"></div>
      </div>
      <p class="w3-wide">MongoDB Compass</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 40%;"></div>
      </div>
      <p class="w3-wide">IIS</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 55%;"></div>
      </div>
      <p class="w3-wide">SOAP UI</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 50%;"></div>
      </div>
      <p class="w3-wide">Aris</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 85%;"></div>
      </div>
      <p class="w3-wide">P2Ware</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 60%;"></div>
      </div>
              <p class="w3-wide">Jira</p>
      <div class="w3-white">
          <div class="w3-dark-grey reaveal anim" style="height: 28px; width: 65%; max-width: 40%;"></div>
      </div>--%>
     </div>
             </div>
    <!-- End Grid/Pricing tables -->


  
    
    <div class="w3-row w3-center w3-padding-16 w3-section w3-light-grey">
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">1+</span><br>
        Partners
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">20+</span><br>
        Projects Done
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge">100+</span><br>
        Happy users
      </div>
      <div class="w3-quarter w3-section">
        <span class="w3-xlarge"><asp:Label ID="visitscount" runat="server" Text="0"></asp:Label></span><br>
        Visits
      </div>
    </div>

<%--    <button class="w3-button w3-light-grey w3-padding-large w3-section">
      <i class="fa fa-download"></i> Download Resume        
    </button>--%>

        <div class="fa fa-download" id="GetCV">
            <asp:Button CssClass="w3-button w3-light-grey w3-padding-large w3-section" ID="btnDownloadCVPL" runat="server" Text="Download Resume [PL]" OnClick="btnDownloadCVPL_Click" CausesValidation="true" />
            <asp:Button CssClass="w3-button w3-light-grey w3-padding-large w3-section" ID="btnDownloadCVEN" runat="server" Text="Download Resume [EN]" OnClick="btnDownloadCVEN_Click" CausesValidation="true"/>
        </div>
    
          <h3 id="projects" class="w3-padding-16 w3-text-light-grey">Example projects</h3>


<div id="myCarousel2" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
          <asp:Repeater ID="Repeatercarouselindicators" runat="server">
              <ItemTemplate>
                  <li data-target="#myCarousel2" data-slide-to=<%#Eval("number") %> class="active"></li>
              </ItemTemplate>
          </asp:Repeater>
      </ol>
     <div class="carousel-inner">
    <!-- repeater -->
    <asp:Repeater ID="repeterProjects" runat="server">
        <ItemTemplate>
            <div class="item <%#Eval("active") %>">
                <div class="w3-row-padding" style="margin: 0 -16px">
                    <div class=" w3-margin-bottom">
                        <ul class="w3-ul w3-white w3-center w3-opacity w3-hover-opacity-off">
                            <li class="w3-dark-grey w3-xlarge w3-padding-32"><%#Eval("name") %></li>
                            <li class="w3-padding-16">Stack: <%#Eval("stack") %></li>
                            <li class="w3-padding-16">Designation: <%#Eval("designation") %></li>
                            <li class="w3-padding-16"">
                                <div style="max-height:300px;height:300px;overflow:auto;margin-left:25px;margin-right:25px;">
                                    <h2>Functional description</h2>
                                    <span class="w3-opacity">
                                        <%#Eval("description") %>
                                    </span>
                                </div>
                            </li>
<%--                            <li class="w3-light-grey w3-padding-24">
                                <button class="w3-button w3-white w3-padding-large w3-hover-black">Sign Up</button>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
         </div>
      <!-- Left and right controls -->
  <a class="left carousel-control" style="width:40px;" href="#myCarousel2" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" style="width:40px;" href="#myCarousel2" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
      <!-- end repeater -->
    
    <!-- Testimonials -->
    <h3 class="w3-padding-24 w3-text-light-grey">My Reputation</h3>  
    <img src="https://media-exp1.licdn.com/dms/image/C5603AQFyw8WsFoIWLA/profile-displayphoto-shrink_100_100/0/1584385025477?e=1642636800&v=beta&t=G5AdmmOPnJjdmOZxG--HVbahvsCp4wI7kf9rvGj5PwI" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:80px">
    <p><span class="w3-large w3-margin-right">Zbigniew Kowalski.</span>Lean Manager, Six Sigma Black Belt, Audytor ISO, Kaizen Trainer</p>
    <p>Polecam Pawła, solidny ekspert 👍</p><br>
    
 
  <!-- End About Section -->
  </div>
  
  <!-- Portfolio Section -->
  <div class="w3-padding-64 w3-content" id="photos">
    <h2 class="w3-text-light-grey">My Photos</h2>
    <hr style="width:200px" class="w3-opacity">


      <style>
          .gray {
              filter: grayscale(100%);
              transition: all 3s;
              cursor:pointer;
          }

              .gray:hover {
                  filter: grayscale(0%);
                  
                  transition: all 3s;
              }
      </style>
    <!-- Grid for photos -->
    <div class="w3-row-padding" style="margin:0 -16px; ">
      <div class="w3-half">
          <iframe src="https://drive.google.com/file/d/1nir4OgXkRx1600m5407aayd40B-nRAaX/preview?start=1" class="gray" style="width: 100%; height:320px;" allow="autoplay"></iframe>
        <img src="images/conv.png" class="gray" style="width:100%">
        <img src="/images/asssstructure.png" class="gray" style="width:100%">
      </div>

      <div class="w3-half">
        <img src="/images/girstructure.png" class="gray" style="width:100%">
        <img src="/images/sioeeis.png" class="gray" style="width:100%">
        <img src="/images/siomain.png" class="gray" style="width:100%">
        <img src="/images/wms.png" class="gray" style="width:100%">
      </div>
    <!-- End photo grid -->
    </div>
  <!-- End Portfolio Section -->
  </div>

  <!-- Contact Section -->
  <div class="w3-padding-64 w3-content w3-text-grey" id="contact">
    <h2 class="w3-text-light-grey">Contact Me</h2>
    <hr style="width:200px" class="w3-opacity">

    <div class="w3-section">
      <p><i class="fa fa-map-marker fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Wroclaw, Poland</p>
      <p><i class="fa fa-phone fa-fw w3-text-white w3-xxlarge w3-margin-right"></i> Phone: 665 29 20 20</p>
      <p><i class="fa fa-envelope fa-fw w3-text-white w3-xxlarge w3-margin-right"> </i> Email: pawelklis85@gmail.com</p>
    </div><br>
    <p>Let's get in touch. Send me a message:</p>

            
      <asp:UpdatePanel ID="upContact" runat="server">
          <ContentTemplate>

                  <p>
                      <asp:TextBox ID="txName" runat="server" class="w3-input w3-padding-16" type="text" placeholder="Name"  name="Name"/></p>
                  <p>
                      <asp:TextBox ID="txEmail" runat="server"  class="w3-input w3-padding-16" type="text" placeholder="Email"  name="Email"/></p>
                  <p>
                      <asp:TextBox ID="txSubject" runat="server"  class="w3-input w3-padding-16" type="text" placeholder="Subject"  name="Subject"/></p>
                  <p>
                      <asp:TextBox ID="txMessage" runat="server"  class="w3-input w3-padding-16" type="text" placeholder="Message"  name="Message"/></p>
                  <p>
                      <asp:Button ID="btnSendMessage" runat="server" CssClass="w3-button w3-light-grey w3-padding-large" Text="SEND MESSAGE" OnClick="btnSendMessage_Click" />

                  </p>

          </ContentTemplate>
      </asp:UpdatePanel>
                     
  <!-- End Contact Section -->
  </div>
  
    <!-- Footer -->
  <footer class="w3-content w3-padding-64 w3-text-grey w3-xlarge">
<%--    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>--%>
    <a href="https://www.linkedin.com/in/pawe%C5%82klis/" target="_blank" class="fa fa-linkedin w3-hover-opacity"></a>
    <a href="https://github.com/pawelklis/" target="_blank" class="fa fa-github w3-hover-opacity"></a>
    <%--<p class="w3-medium">Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank" class="w3-hover-text-green">w3.css</a></p>--%>
  <!-- End footer -->
  </footer>

<!-- END PAGE CONTENT -->
</div>
            </form>
</body>
</html>

