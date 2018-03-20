<%@ Page Title="" Language="C#" MasterPageFile="Prothsahanteam.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="demo_Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        jQuery(function ($) {
            debugger;
            // changed .hover to .each
            $('.MultipleImages').each(function () {
                var rotation = Math.random() * 41 - 10;
                var depth = Math.floor(Math.random() * 256);
                $(this).css({
                    'transform': 'rotateZ(' + rotation + 'deg)',
                    'z-index': depth
                });
            });
        });
    </script>
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Photo Gallery</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">News and Views</li>
                            <li class="active">Photo Gallery</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Section End Here-->
        <div class="content-wrapper container" id="page-info">
            <div class="row">
                <div class="col-xs-12">
                    <article class="blog post-4395 page type-page status-publish hentry">
                        <div class="row">
                            <!-- <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption"> -->
                            <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption">
                                <div class="static_faqs_div block faq">
                                    <h3 class="head" style="text-transform: uppercase;">Global Warming Awarness</h3>
                                    <p>March on the streets to create awareness against Global Warming</p>
                                    <div class="row">
                                  <div id="MultipleImages" class="col-sm-12">
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_clearpostervision.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_dhingancms.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_drnnaajtak.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_prothsahanteam.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_rajkumar.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                      <figure class="photo">
                                        <img src="http://prothsahanteam.org/images/s_hansrajgirl.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" class="img-responsive frame">
                                      </figure>
                                  </div>
                                    </div>
                                </div>
                                
         <style>
         #MultipleImages {
  @media screen and (min-width: 801px) {
    position: absolute;
    width: 90%;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }
}

.photo {
  /*width: 20%;*/
  position: relative;
  background: white;
  box-shadow: inset 0px 0px 50px rgba(0,0,0,0.1),
              0px 5px 10px rgba(0,0,0,0.25);
  float: left;
  margin-top: 0;
  margin-right: 0;
  margin-bottom: 0;
  margin-left: 0;
  border-radius: 3px;
  padding: 10px 10px 10px 10px;
  transition: all 100ms ease-out;
  transform: translateZ(0);
  img {
    width: 100%;
    height: auto;
    position: relative;    
  }
  figcaption {
    margin-top: 10px;
    font-family: 'Indie Flower', cursive;
    font-size: 24px;
    font-weight: bold;
    text-align:center;    
    line-height: 1;
    color: black;
  }
  
  @media screen and (max-width: 400px) {
    width: 90%;
    transform: rotateZ(0deg) !important;
    margin: 20px auto 0 auto; 
    float: none;    
  }
  
  @media screen and (min-width: 401px) {
    &:hover {
      transform: rotateZ(0deg) scale(1.2) !important;
      z-index: 257 !important;
      box-shadow: inset 0px 0px 50px rgba(0, 0, 0, 0.1),
                  0px 0px 29px rgba(0, 0, 0, 0.2);
    }
  }  
  @media screen and (min-width: 401px) and (max-width: 600px) {    
    width: 50%;    
  }
  @media screen and (min-width: 601px) and (max-width: 800px) {    
    width: 33.3333%;    
  }
  @media screen and (min-width: 801px) and (max-width: 1000px) {
    width: 25%;    
  }
  @media screen and (min-width: 1001px) {
    width: 20%;    
  }
}
         </style>

                                <style>
                                    .content-wrapper article.blog
                                    {
                                        margin-bottom: 40px;
                                    }

                                    #page-info
                                    {
                                        padding-bottom: 0;
                                    }

                                    .comment-block
                                    {
                                        display: none;
                                    }
                                </style>

                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>