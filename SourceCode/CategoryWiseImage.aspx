<%@ Page Title="" Language="C#" MasterPageFile="Prothsahanteam.master" AutoEventWireup="true" CodeFile="CategoryWiseImage.aspx.cs" Inherits="demo_CategoryWiseImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

    <style>
        /*
Darkbox
*/
        [data-darkbox]
        { /* add cursor to clickable darkbox items */
            cursor: pointer;
            backface-visibility: hidden;
        }

        #darkbox
        {
            position: fixed;
            z-index: 9999;
            background: rgba(0,0,0,0.8) no-repeat none 50%;
            background-size: contain;
            box-shadow: 0 0 0 3000px rgba(0,0,0,0.8);
            opacity: 0;
            visibility: hidden;
        }

            #darkbox.on
            {
                opacity: 1;
                visibility: visible;
                height: 90% !important;
                width: 90% !important;
                left: 5% !important;
                top: 5% !important;
            }

            #darkbox:after
            {
                position: absolute;
                right: 0;
                top: 0;
                font-size: 2em;
                content: "\2A2F";
                color: #fff;
                cursor: pointer;
            }
        /*prev next buttons*/
        #darkbox_prev,
        #darkbox_next
        {
            cursor: pointer;
            user-select: none;
            -webkit-user-select: none;
            position: absolute;
            top: 50%;
            margin-top: -25px;
            height: 50px;
            width: 50px;
            -webkit-transition: 0.3s;
            transition: 0.3s;
            border-top: 2px solid #fff;
            border-right: 2px solid #fff;
        }

            #darkbox_prev:hover,
            #darkbox_next:hover
            {
                border-color: #09c;
            }

        #darkbox_prev
        {
            left: -2px;
            -o-transform: rotate(-135deg);
            -ms-transform: rotate(-135deg);
            -moz-transform: rotate(-135deg);
            -webkit-transform: rotate(-135deg);
            transform: rotate(-135deg);
        }

        #darkbox_next
        {
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            right: -2px;
        }

        #darkbox-description
        {
            position: absolute;
            width: 100%;
            color: #fff;
            bottom: 5px;
            text-align: right;
            text-shadow: 0 1px 1px #000;
        }

            #darkbox-description a
            {
                color: #fff;
                font-weight: bold;
            }

        #darkbox sub
        {
            font-size: 10px;
        }

        #MultipleImages
        {
            @media screen and (min-width: 801px)
            {
                position: absolute; width: 90%; top: 50%; left: 50%; transform: translate(-50%, -50%);
            }
        }

        .photo
        {
            /*width: 20%;*/
            position: relative;
            background: white;
            box-shadow: inset 0px 0px 50px rgba(0,0,0,0.1), 0px 5px 10px rgba(0,0,0,0.25);
            float: left;
            margin-top: 0;
            margin-right: 0;
            margin-bottom: 0;
            margin-left: 0;
            border-radius: 3px;
            padding: 10px 10px 10px 10px;
            transition: all 100ms ease-out;
            transform: translateZ(0);
            img;

        {
            width: 100%;
            height: auto;
            position: relative;
        }

        figcaption
        {
            margin-top: 10px;
            font-family: 'Indie Flower', cursive;
            font-size: 24px;
            font-weight: bold;
            text-align: center;
            line-height: 1;
            color: black;
        }

        @media screen and (max-width: 400px)
        {
            width: 90%; transform: rotateZ(0deg) !important; margin: 20px auto 0 auto; float: none;
        }

        @media screen and (min-width: 401px)
        {
            &:hover
            {
                transform: rotateZ(0deg) scale(1.2) !important;
                z-index: 257 !important;
                box-shadow: inset 0px 0px 50px rgba(0, 0, 0, 0.1), 0px 0px 29px rgba(0, 0, 0, 0.2);
            }
        }

        @media screen and (min-width: 401px) and (max-width: 600px)
        {
            width: 50%;
        }

        @media screen and (min-width: 601px) and (max-width: 800px)
        {
            width: 33.3333%;
        }

        @media screen and (min-width: 801px) and (max-width: 1000px)
        {
            width: 25%;
        }

        @media screen and (min-width: 1001px)
        {
            width: 20%;
        }

        }

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
        <div class="container">
            <p>&nbsp;</p>
            <a href="ImageGallery.aspx" class="btn btn-default" style="float: right;">Back to Gallery</a>
            <div id="ImageId" runat="server"></div>
            <p>&nbsp;</p>
        </div>
    </div>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <%--<script src="../js/darkbox.js"></script>--%>
</asp:Content>

