<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="nidushealth.com.deufult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentmain" runat="server">
<div class="container">
    <div class="rowmn shadow bgWhite">
      <div class="wmn">
        <link rel="stylesheet" href="Styles/nivo-slider.css" type="text/css" media="screen" />
        <script type="text/javascript" src="scripts/jquery.nivo.slider.js"></script> 
        <script>
            //slider nivo
            $(window).load(function () {
                $('#slider').nivoSlider();
            });
    </script>
        <div class="slider_main">
          <div class="slider-wrapper theme-default">
            <div id="slider" class="nivoSlider">
              <div class="itemSlide"> <a href=""> <img src="data/img1.jpg" title="Our quality doctors put compassion first. They know you by heart."/></a> </div>
              <div class="itemSlide"> <a href=""><img src="data/img2.jpg" title="We focus on wellness and prevention to keep you and your family healthy."/></a> </div>
              <div class="itemSlide"> <a href=""><img src="data/img3.jpg" title="We offers the programs and services you need to stay healthy"/></a> </div>
              <div class="itemSlide"> <a href=""><img src="data/img4.jpg" title="We’re here for you and your family every step of the way."/></a> </div>
            </div>
          </div>
        </div>
      </div>
      <div class="col12">
        <div class="box padd10">
          <div class="nameL" id="About Us"></div>
          <h2 class="headingBox"><span>About Us</span>
            <div class="subMenu">
              <div class="linkSC"><a>Executive Team</a></div>
              <div class="linkSC"><a>Board of Directors</a></div>
              <div class="linkSC"><a>Our Advisors</a></div>
              <div class="linkSC"><a>Investors</a></div>
              <div class="linkSC"><a>Partners</a></div>
              <div class="linkSC"><a>Careers</a></div>
              <div class="linkSC"><a>Contact Us</a></div>
            </div>
          </h2>
          <div class="innerbox ">
            <div class="inner_bIntro"> <img  src="data/img10.jpg" /> Founded in 2009, MDLIVE is a leading telehealth provider of online and on-demand healthcare delivery services and software that benefit patients, hospitals, employers, payers, physician practice groups and accountable care organizations.<br />
              Our cloud-based Virtual Medical Office software platform makes it possible for patients, medical professionals and plan administrators to collaborate seamlessly and securely via voice, video, email and mobile devices. Payers and providers can also utilize the HIPAA-compliant system to collect and share clinical data from patient medical records, lab results and in-home biometric devices for real-time risk assessments, wellness advice, diagnosis and treatment.<br />
              We also provide affordable consultations via a nationwide network of board certified physicians and licensed therapists. </div>
          </div>
        </div>
        <!--End Box-->
        <div class="box padd10">
          <div class="nameL" id="Consumers"></div>
          <h2 class="headingBox" ><span>Consumers</span>
            <div class="subMenu">
              <div class="linkSC"><a>See a Doctor</a></div>
              <div class="linkSC"><a>See a Therapist</a></div>
              <div class="linkSC"><a>Get Started</a></div>
              <div class="linkSC"><a>FAQs</a></div>
              <div class="linkSC"><a>Our Providers</a></div>
            </div>
          </h2>
          <div class="innerbox  ">
            <div class="imgCate"><img src="data/img6.jpg" />
              <div class="captionPhotoCate">
                <h3>See a Doctor Now!</h3>
                <div class="clearfix"></div>
                <div class="desCaption"> By video or phone.<br />
                  Exceptional Care, Anywhere.</div>
                <div class="clearfix"></div>
                <div class="listSubmenu fright">
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>See a Doctor</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>See a Therapist</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>FAQs</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Our Providers</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Health Services Center</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="videoCate">
              <div class="listMediaIndex">
                <div class="innerListMedia">
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video1.jpg"><img src="data/video1.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--End media-->
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video2.jpg"><img src="data/video2.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--End media-->
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video1.jpg"><img src="data/video1.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--End Box-->
        <div class="box padd10">
          <div class="nameL" id="Telehealth Solutions"></div>
          <h2 class="headingBox" ><span>Telehealth Solutions</span>
            <div class="subMenu">
              <div class="linkSC"><a>Employers</a></div>
              <div class="linkSC"><a>Health Plans</a></div>
              <div class="linkSC"><a>Providers</a></div>
              <div class="linkSC"><a>Health Systems</a></div>
              <div class="linkSC"><a>Health Services Center</a></div>
              <div class="linkSC"><a>Contact Us</a></div>
            </div>
          </h2>
          <div class="innerbox  ">
            <div class="imgCate"><img src="data/img5.jpg" />
              <div class="captionPhotoCate">
                <h3>Transforming the World of Healthycare</h3>
                <div class="clearfix"></div>
                <div class="desCaption"> Online and on-demand health care delivery services and cloud-based software platform. </div>
                <div class="clearfix"></div>
                <div class="listSubmenu">
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Employers</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Health Plans</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Providers</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Health Systems</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                  <div class="linkSM">
                    <div class="btn btnWhite"><a>Health Services Center</a><i class="glyphicon  glyphicon-chevron-right"></i> </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="videoCate">
              <div class="listMediaIndex">
                <div class="innerListMedia">
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video1.jpg"><img src="data/video1.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--End media-->
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video2.jpg"><img src="data/video2.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo</p>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--End media-->
                  <div class="mediaItem">
                    <div class="media">
                      <div class="innerMedia">
                        <div class="dateTime">Apr 19, 2015</div>
                        <div class="thumb"><a class="fancybox" rel="group" href="data/video1.jpg"><img src="data/video1.jpg" /></a></div>
                        <div class="text">
                          <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                          <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--End Box-->
        <div class="box padd10">
          <div class="nameL" id="Last News"></div>
          <h2 class="headingBox"  ><span>Last News</span>
            <div class="subMenu">
              <div class="linkSC"><a>Media Coverage Archive</a></div>
              <div class="linkSC"><a>Press Release Archive</a></div>
            </div>
          </h2>
          <div class="innerbox ">
            <div class="listMediaIndex">
              <div class="innerListMedia">
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media-->
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media-->
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media-->
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media-->
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media-->
                <div class="mediaItem">
                  <div class="media">
                    <div class="innerMedia">
                      <div class="dateTime">Apr 19, 2015</div>
                      <div class="thumb"><a><img src="data/h3.jpg" /></a></div>
                      <div class="text">
                        <h3><a href="detailnews.html">Nulla vel metus scelerisques</a></h3>
                        <p>Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. </p>
                      </div>
                      <div class="viewMoreNews">
                        <div class="fleft linePostL"><i class="glyphicon glyphicon-comment white"></i><a href="news.html">Read more </a> </div>
                        <div class="fright linkViewMore"><a>View detail &raquo;</a></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--End media--> 
                
              </div>
            </div>
          </div>
        </div>
        <!--End Box--> 
        
      </div>
      <div class="footer wmn"> </div>
    </div>
  </div>
</asp:Content>
