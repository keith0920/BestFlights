<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Home</title>
  <!-- Custom Theme files -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
  <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
  <!-- //Custom Theme files -->
  <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
  <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
  <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
  <link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />
  <!-- js -->
  <script src="js/jquery.min.js"></script>
  <script src="js/modernizr.custom.js"></script>
  <!-- //js -->
  <!-- fonts -->
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
  <!-- //fonts -->
  <script type="text/javascript">
    $(document).ready(function () {
      $('#horizontalTab').easyResponsiveTabs({
        type: 'default', //Types: default, vertical, accordion
        width: 'auto', //auto or any width like 600px
        fit: true   // 100% fit in a container
      });
    });
  </script>
  <!--pop-up-->
  <script src="js/menu_jquery.js"></script>
  <!--//pop-up-->
</head>
<body>
<!--header-->
<div class="header">
  <div class="container">
    <div class="header-grids">
      <div class="logo">
        <h1><a  href="index.jsp"><span>Best</span>Flight</a></h1>
      </div>

      <div class="clearfix"> </div>
    </div>
    <div class="nav-top">
      <div class="top-nav">
        <span class="menu"><img src="images/menu.png" alt="" /></span>

        <ul class="nav1">
          <li class="active"><a href="index.jsp">Flights</a></li>

          <% if (session.getAttribute("username")!=null){%>

          <li class="active"><a href="Showorders.jsp">Orders</a></li>

          <% } %>

        </ul>
        <div class="clearfix"> </div>
        <!-- script-for-menu -->
        <script>
          $( "span.menu" ).click(function() {
            $( "ul.nav1" ).slideToggle( 300, function() {
              // Animation complete.
            });
          });

        </script>
        <!-- /script-for-menu -->
      </div>
      <% if (session.getAttribute("username")!=null){%>
      <div class="dropdown-grids">
						<div id="loginContainer"><a href="#" id="loginButton"><span>Welcome,<%=session.getAttribute("username")%>, Sign out</span></a>
							<div id="loginBox">
								<form id="loginForm" form method="post" action="/signout.jsp">
									<div class="login-grids">
												<div class="button-bottom">
													<p>Thanks! <a href="signout.jsp">Sign out</a></p>
												</div>
										</div>
								</form>
							</div>
						</div>
				</div>

      <% } else { %>

      <div class="dropdown-grids">
        <div id="loginContainer"><a href="#" id="loginButton"><span>Login</span></a>
          <div id="loginBox">
            <form id="loginForm" form method="post" action="/login.jsp">
              <div class="login-grids">
                <div class="login-grid-left">
                  <fieldset id="body">
                    <fieldset>
                      <label for="email">User name/label>
                        <input type="text" name="userid" id="email">
                    </fieldset>
                    <fieldset>
                      <label for="password">Password</label>
                      <input type="password" name="password" id="password">
                    </fieldset>
                    <input type="submit" id="login" value="Sign in">
                    <label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
                  </fieldset>
                  <span><a href="#">Forgot your password?</a></span>
                  <div class="or-grid">
                    <p>OR</p>
                  </div>
                  <div class="social-sits">
                    <div class="facebook-button">
                      <a href="#">Connect with Facebook</a>
                    </div>
                    <div class="chrome-button">
                      <a href="#">Connect with Google</a>
                    </div>
                    <div class="button-bottom">
                      <p>New account? <a href="signup.html">Signup</a></p>
                    </div>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>


      <% } %>
      <div class="clearfix"> </div>
    </div>
  </div>
</div>
<!--//header-->
<!-- banner -->
<div class="banner">
  <!-- container -->
  <div class="container">
    <div class="col-md-4 banner-left">
      <section class="slider2">
        <div class="flexslider">
          <ul class="slides">
            <li>
              <div class="slider-info">
                <img src="images/1.jpg" alt="">
              </div>
            </li>
            <li>
              <div class="slider-info">
                <img src="images/2.jpg" alt="">
              </div>
            </li>
            <li>
              <div class="slider-info">
                <img src="images/3.jpg" alt="">
              </div>
            </li>
            <li>
              <div class="slider-info">
                <img src="images/4.jpg" alt="">
              </div>
            </li>
            <li>
              <div class="slider-info">
                <img src="images/2.jpg" alt="">
              </div>
            </li>
          </ul>
        </div>
      </section>
      <!--FlexSlider-->
    </div>
    <div class="col-md-8 banner-right">
      <div class="sap_tabs">
        <div class="booking-info">
          <h2>Book Domestic & International Flight Tickets</h2>
        </div>
        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
          <ul class="resp-tabs-list">
            <!--<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Return</span></li>-->
            <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>One way</span></li>
            <div class="clearfix"></div>
          </ul>
          <!---->
          <div class="resp-tabs-container">
              <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                  <div class="facts">
                      <div class="booking-form">
                          <!---strat-date-piker---->
                          <script>
                              $(function() {
                                  $( "#datepicker,#datepicker1" ).datepicker();
                              });
                          </script>
                          <div class="reservation">
                              <ul>
                                  <div class="date_btn">
                                      <div class="booking_room">
                                          <div class="reservation">
                                              <form action="GetTicketsServlet" method="GET">
                                                <!-- GetTicketsServlet or flights.jsp -->

                                                <ul>
                                                      <li  class="span1_of_1 desti">
                                                          <h5>Flying from</h5>
                                                          <div class="book_date">
                                                              <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                              <input type="text" name="flyfrom" placeholder="Type Departure City" class="typeahead1 input-md form-control tt-input" required="">
                                                          </div>
                                                      </li>

                                                      <li  class="span1_of_1 left desti">
                                                          <h5>Flying to</h5>
                                                          <div class="book_date">
                                                              <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                              <input type="text" name="flyto" placeholder="Type Destination City" class="typeahead1 input-md form-control tt-input" required="">
                                                          </div>
                                                      </li>

                                                      <li  class="span1_of_1">
                                                          <h5>Departure</h5>
                                                          <div class="book_date">
                                                              <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                                              <input type="date" name="dateinfo" value="Select date" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Select date';}">
                                                          </div>
                                                      </li>
                                                      <li class="span1_of_1 left">
                                                          <h5>Adults (18+)</h5>
                                                          <div class="section_room">
                                                              <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                                                  <option value="null">1</option>
                                                                  <option value="null">2</option>
                                                                  <option value="AX">3</option>
                                                                  <option value="AX">4</option>
                                                                  <option value="AX">5</option>
                                                                  <option value="AX">6</option>
                                                              </select>
                                                          </div>
                                                      </li>
                                                      </li>
                                                      <li class="span1_of_1 left tab-children">
                                                          <h5>Children (0-17)</h5>
                                                          <!----------start section_room----------->
                                                          <div class="section_room">
                                                              <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                                                  <option value="null">0</option>
                                                                  <option value="null">1</option>
                                                                  <option value="null">2</option>
                                                                  <option value="AX">3</option>
                                                                  <option value="AX">4</option>
                                                                  <option value="AX">5</option>
                                                                  <option value="AX">6</option>
                                                              </select>
                                                          </div>
                                                      </li>
                                                      <li class="span1_of_1 economy">
                                                          <h5>Class</h5>
                                                          <!----------start section_room----------->
                                                          <div class="section_room">
                                                              <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                                                  <option value="null">Economy</option>
                                                                  <option value="null">Business</option>
                                                              </select>
                                                          </div>
                                                      </li>
                                                  </ul>
                                                  <input type="submit" value="Search" />
                                              </form>
                                          </div>
                                          <div class="clearfix"></div>
                              </ul>
                          </div>
                      </div>
                      <div class="clearfix"></div>
                  </div>
              </div>
            <div class="tab-2 resp-tab-content" aria-labelledby="tab_item-1">
              <div class="facts">
                <div class="booking-form">
                  <!---strat-date-piker---->
                  <link rel="stylesheet" href="css/jquery-ui.css" />
                  <script src="js/jquery-ui.js"></script>
                  <script>
                    $(function() {
                      $( "#datepicker,#datepicker1" ).datepicker();
                    });
                  </script>

                  <!---/End-date-piker---->
                  <div class="online_reservation">
                    <div class="b_room">
                      <div class="booking_room">
                        <div class="reservation">
                          <ul>
                            <li  class="span1_of_1 desti">
                              <h5>Flying from</h5>
                              <div class="book_date">
                                <form>
                                  <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                  <input type="text" placeholder="Type Departure City" class="typeahead1 input-md form-control tt-input" required="">
                                </form>
                              </div>
                            </li>
                            <li  class="span1_of_1 left desti">
                              <h5>Flying to</h5>
                              <div class="book_date">
                                <form>
                                  <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                  <input type="text" placeholder="Type Destination City" class="typeahead1 input-md form-control tt-input" required="">
                                </form>
                              </div>
                            </li>
                            <div class="clearfix"></div>
                          </ul>
                        </div>
                        <div class="reservation">
                          <ul>
                            <li  class="span1_of_1">
                              <h5>Departure</h5>
                              <div class="book_date">
                                <form>
                                  <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                  <input type="date" value="Select date" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Select date';}">
                                </form>
                              </div>
                            </li>
                            <li class="span1_of_1 left">
                              <h5>Adults (18+)</h5>
                              <!----------start section_room----------->
                              <div class="section_room">
                                <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                  <option value="null">1</option>
                                  <option value="null">2</option>
                                  <option value="AX">3</option>
                                  <option value="AX">4</option>
                                  <option value="AX">5</option>
                                  <option value="AX">6</option>
                                </select>
                              </div>
                            </li>
                            <li class="span1_of_1 left tab-children">
                              <h5>Children (0-17)</h5>
                              <!----------start section_room----------->
                              <div class="section_room">
                                <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                  <option value="null">1</option>
                                  <option value="null">2</option>
                                  <option value="AX">3</option>
                                  <option value="AX">4</option>
                                  <option value="AX">5</option>
                                  <option value="AX">6</option>
                                </select>
                              </div>
                            </li>
                            <li class="span1_of_1 economy">
                              <h5>Class</h5>
                              <!----------start section_room----------->
                              <div class="section_room">
                                <select id="country" onChange="change_country(this.value)" class="frm-field required">
                                  <option value="null">Economy</option>
                                  <option value="null">Business</option>
                                </select>
                              </div>
                            </li>
                            <div class="clearfix"></div>
                          </ul>
                        </div>
                        <div class="reservation">
                          <ul>
                            <li class="span1_of_3">
                              <div class="date_btn">
                                <form>
                                  <input type="submit" value="Search" />
                                </form>
                              </div>
                            </li>
                            <div class="clearfix"></div>
                          </ul>
                        </div>
                      </div>
                      <div class="clearfix"></div>
                    </div>
                  </div>
                  <!---->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="clearfix"> </div>
  </div>
  <!-- //container -->
</div>
<!-- //banner -->
<!--<div class="move-text">-->
<!--<div class="marquee">Register your hotel with us free of cost.<a href="signup.html">Here</a></div>-->
<!--<script type="text/javascript" src="js/jquery.marquee.min.js"></script>-->
<!--<script>-->
<!--$('.marquee').marquee({ pauseOnHover: true });-->
<!--//@ sourceURL=pen.js-->
<!--</script>-->
<!--</div>-->
<!-- banner-bottom -->
<!-- footer -->
<div class="footer">
  <!-- container -->
  <div class="container">
    <div class="footer-top-grids">
      <div class="footer-grids">
        <div class="col-md-3 footer-grid">
          <h4>Our Products</h4>
          <ul>
            <li><a href="index.html">Flight Schedule</a></li>
            <li><a href="flights-hotels.html">City Airline Routes</a></li>
            <li><a href="index.html">International Flights</a></li>
            <li><a href="hotels.html">International Hotels</a></li>
            <li><a href="bus.html">Bus Booking</a></li>
            <li><a href="index.html">Domestic Airlines</a></li>
            <li><a href="holidays.html">Holidays Trip</a></li>
            <li><a href="hotels.html">Hotel Booking</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">
          <h4>Company</h4>
          <ul>
            <li><a href="about.html">About Us</a></li>
            <li><a href="faqs.html">FAQs</a></li>
            <li><a href="terms.html">Terms &amp; Conditions</a></li>
            <li><a href="privacy.html">Privacy </a></li>
            <li><a href="contact.html">Contact Us</a></li>
            <li><a href="#">Careers</a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="booking.html">Feedback</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">
          <h4>Travel Resources</h4>
          <ul>
            <li><a href="holidays.html">Holidays Packages</a></li>
            <li><a href="weekend.html">Weekend Getaways</a></li>
            <li><a href="index.html">International Airports</a></li>
            <li><a href="index.html">Domestic Flights Booking</a></li>
            <li><a href="booking.html">Customer Support</a></li>
            <li><a href="booking.html">Cancel Bookings</a></li>
            <li><a href="booking.html">Print E-tickets</a></li>
            <li><a href="booking.html">Customer Forums</a></li>
            <li><a href="booking.html">Make a Payment</a></li>
            <li><a href="booking.html">Complete Booking</a></li>
            <li><a href="booking.html">Assurance Claim</a></li>
            <li><a href="booking.html">Retail Offices</a></li>
          </ul>
        </div>
        <div class="col-md-3 footer-grid">
          <h4>More Links</h4>
          <ul class="chf_footer_list">
            <li><a href="#">Flights Discount Coupons</a></li>
            <li><a href="#">Domestic Airlines</a></li>
            <li><a href="#">Indigo Airlines</a></li>
            <li><a href="#">Air Asia</a></li>
            <li><a href="#">Jet Airways</a></li>
            <li><a href="#">SpiceJet</a></li>
            <li><a href="#">GoAir</a></li>
            <li><a href="#">Air India</a></li>
            <li><a href="#">Domestic Flight Routes</a></li>
            <li><a href="#">Indian City Flight</a></li>
            <li><a href="#">Flight Sitemap</a></li>
          </ul>
        </div>
        <div class="clearfix"> </div>
      </div>
      <!-- news-letter -->
      <div class="news-letter">
        <div class="news-letter-grids">
          <div class="col-md-4 news-letter-grid">
            <p>Toll Free No : <span>1234-5678-901</span></p>
          </div>
          <div class="col-md-4 news-letter-grid">
            <p class="mail">Email : <a href="mailto:info@example.com">mail@example.com</a></p>
          </div>
          <div class="col-md-4 news-letter-grid">
            <form>
              <input type="text" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}" required="">
              <input type="submit" value="Subscribe">
            </form>
          </div>
          <div class="clearfix"> </div>
        </div>
      </div>
      <!-- //news-letter -->
    </div>
  </div>
  <!-- //container -->
</div>
<!-- //footer -->
<div class="footer-bottom-grids">
  <!-- container -->
  <div class="container">
    <div class="footer-bottom-top-grids">
      <div class="col-md-4 footer-bottom-left">
        <h4>Download our mobile Apps</h4>
        <div class="d-apps">
          <ul>
            <li><a href="#"><img src="images/app1.png" alt="" /></a></li>
            <li><a href="#"><img src="images/app2.png" alt="" /></a></a></li>
            <li><a href="#"><img src="images/app3.png" alt="" /></a></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-4 footer-bottom-left">
        <h4>We Accept</h4>
        <div class="a-cards">
          <ul>
            <li><a href="#"><img src="images/c1.png" alt="" /></a></li>
            <li><a href="#"><img src="images/c2.png" alt="" /></a></a></li>
            <li><a href="#"><img src="images/c3.png" alt="" /></a></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md-4 footer-bottom-left">
        <h4>Follow Us</h4>
        <div class="social">
          <ul>
            <li><a href="#" class="facebook"> </a></li>
            <li><a href="#" class="facebook twitter"> </a></li>
            <li><a href="#" class="facebook chrome"> </a></li>
            <li><a href="#" class="facebook dribbble"> </a></li>
          </ul>
        </div>
      </div>
      <div class="clearfix"> </div>
      <div class="copyright">
        <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
      </div>
    </div>
  </div>
</div>
<script defer src="js/jquery.flexslider.js"></script>
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
  $(function(){
    SyntaxHighlighter.all();
  });
  $(window).load(function(){
    $('.flexslider').flexslider({
      animation: "slide",
      start: function(slider){
        $('body').removeClass('loading');
      }
    });
  });
</script>
</body>
</html>