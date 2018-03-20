<%@ Page Title="" Language="C#" MasterPageFile="Prothsahanteam.master" AutoEventWireup="true" CodeFile="ImageGallery.aspx.cs" Inherits="demo_ImageGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
     <style>
         td, table
         {
             border:none;
         }
        table img {
    width: 240px;
    height: 145px;
}
         td, th
         {
             font-size: 20px;
             color:#00C851;
             padding:10px;
         }
         /*span
         {
             -webkit-box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);
    padding: 20px;
         }*/
         
        /*
Darkbox
*/
        [data-darkbox] { /* add cursor to clickable darkbox items */
            cursor: pointer;
            backface-visibility: hidden;
        }

        #darkbox {
            position: fixed;
            z-index: 9999;
            background: rgba(0,0,0,0.8) no-repeat none 50%;
            background-size: contain;
            box-shadow: 0 0 0 3000px rgba(0,0,0,0.8);
            opacity: 0;
            visibility: hidden;
        }

            #darkbox.on {
                opacity: 1;
                visibility: visible;
                height: 90% !important;
                width: 90% !important;
                left: 5% !important;
                top: 5% !important;
            }

            #darkbox:after {
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
        #darkbox_next {
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
            #darkbox_next:hover {
                border-color: #09c;
            }

        #darkbox_prev {
            left: -2px;
            -o-transform: rotate(-135deg);
            -ms-transform: rotate(-135deg);
            -moz-transform: rotate(-135deg);
            -webkit-transform: rotate(-135deg);
            transform: rotate(-135deg);
        }

        #darkbox_next {
            -o-transform: rotate(45deg);
            -ms-transform: rotate(45deg);
            -moz-transform: rotate(45deg);
            -webkit-transform: rotate(45deg);
            transform: rotate(45deg);
            right: -2px;
        }

        #darkbox-description {
            position: absolute;
            width: 100%;
            color: #fff;
            bottom: 5px;
            text-align: right;
            text-shadow: 0 1px 1px #000;
        }

            #darkbox-description a {
                color: #fff;
                font-weight: bold;
            }

        #darkbox sub {
            font-size: 10px;
        }

     </style>
    <h2 class="text-center slideanim box-title" itemscope itemprop="gallery">Gallery</h2>
    <div class="container">
        <%--<table cellpadding="0" cellspacing="0" width="100%">
        <tbody>
        <tr>
            <td align="center">
                <table align="center" cellpadding="0" cellspacing="0" width="85%">
                    <tbody><tr style="font-size: 9pt; font-family: Verdana">
                        <td align="center" colspan="3" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <span class="style10">March on the
                                    streets to create awareness against <strong>Global Warming</strong></span></td>
                    </tr>
                    <tr style="font-size: 9pt; font-family: Verdana">
                        <td height="25" width="34%">
                        </td>
                        <td width="32%">
                        </td>
                        <td width="34%">
                        </td>
                    </tr>
                    <tr style="font-size: 9pt; font-family: Verdana">
                        <td width="34%">
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/clearpostervision.jpg" rel="lightbox[roadtrip]" title="Child march against Global Warming...">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_clearpostervision.jpg" data-darkbox="http://prothsahanteam.org/images/s_clearpostervision.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td width="32%">
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/dhingancms.jpg" rel="lightbox[roadtrip]" title="Mr. Vivek Vasisth during Global Warming Awareness March ">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_dhingancms.jpg" data-darkbox="http://prothsahanteam.org/images/s_dhingancms.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                            </div>
                        </td>
                        <td width="34%">
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/drnnaajtak.jpg" rel="lightbox[roadtrip]" title="Dr. Narendra Nath (Chairman Trans Yamuna Development Board, Delhi), Vivek - President (PTeam), Mr Jitender Singh ( President- Shaheed Bhagar singh Seva Dal)">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_drnnaajtak.jpg" data-darkbox="http://prothsahanteam.org/images/s_dhingancms.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                            </div>
                        </td>
                    </tr>
                    <tr style="font-size: 9pt; font-family: Verdana">
                        <td height="15" width="34%">
                        </td>
                        <td width="32%">
                        </td>
                        <td width="34%">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/prothsahanteam.jpg" rel="lightbox[roadtrip]" title="Mr. Alok Vasisth (Founder of Prothsahan Team) during March">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_prothsahanteam.jpg" data-darkbox= "http://prothsahanteam.org/images/s_prothsahanteam.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/rajkumar.jpg" rel="lightbox[roadtrip]" title="Magician Rajkumar Organising the Event
">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_rajkumar.jpg" data-darkbox="http://prothsahanteam.org/images/s_rajkumar.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/hansrajgirl.jpg" rel="lightbox[roadtrip]" title="Hansraj Smarak School Girls in March">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_hansrajgirl.jpg" data-darkbox="http://prothsahanteam.org/images/s_hansrajgirl.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/preetigargflex.jpg" rel="lightbox[roadtrip]" title="Mr Garg Chairman ,RWA &amp; Mrs Preeti, Councillor &amp; Mr Veer Singh Dhingan, MLA">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_preetigargflex.jpg" data-darkbox="http://prothsahanteam.org/images/s_preetigargflex.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/prothsahanteam119.jpg" rel="lightbox[roadtrip]" title="March with Prothsahan team ">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_prothsahanteam119.jpg" data-darkbox="http://prothsahanteam.org/images/s_prothsahanteam119.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/prothsahanteam171.jpg" rel="lightbox[roadtrip]" title="Mr C M Sharma Architech ( Retd) Min of Telecom, Mr Vivek Agarwal, Energy Consultant, Mr Vivek Vashistha , Mr KB Verma ( Organising Secretary of the Event), Mr GD Sharma ( Secretary, Brahman Samaj Sabha-Gzb), Mr Veer Singh Dhingan MLA, Mr DC Garg encouraging the childrens to Stopping Global Warming">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_prothsahanteam171.jpg" data-darkbox="http://prothsahanteam.org/images/s_prothsahanteam171.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/sanjayvivekmarch.jpg" rel="lightbox[roadtrip]" title="Mr. Sanjay &amp; Mr. Vivek in March">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_sanjayvivekmarch.jpg" data-darkbox="http://prothsahanteam.org/images/s_sanjayvivekmarch.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/showermeatless.jpg" rel="lightbox[roadtrip]" title="Eat Less Meat">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_showermeatless.jpg" data-darkbox="http://prothsahanteam.org/images/s_showermeatless.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/stopcrackers.jpg" rel="lightbox[roadtrip]" title="Stop Crackers to prevent Global Warming">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_stopcrackers.jpg" data-darkbox="http://prothsahanteam.org/images/s_stopcrackers.jpg"  width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <div align="center" class="style10">
                                <a name="sneh"></a>Activity of Traffic Awareness at <strong>Sneh International School,
                                    New Rajdhani Enclave, Delhi </strong>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" height="25">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/traffic090620082105.jpg" rel="lightbox[roadtrip]" title="Mr. Vivek delivering the speech at Sneh International School">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_traffic090620082105.jpg"  data-darkbox="http://prothsahanteam.org/images/s_traffic090620082105.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/traffic090620082107.jpg" rel="lightbox[roadtrip]" title="Mr. Vivek at Sneh International School at Traffic awareness Camp">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_traffic090620082107.jpg" data-darkbox="http://prothsahanteam.org/images/s_traffic090620082107.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/traffic110620082123.jpg" rel="lightbox[roadtrip]" title="Traffic awareness Camp at SIS">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_traffic110620082123.jpg" data-darkbox="http://prothsahanteam.org/images/s_traffic110620082123.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <div align="center" class="style10">
                                <a id="donation08" name="donation08"></a>
  Awareness on Eye Donation, Organ Donation, Complete Body Scan &amp;&nbsp; Blood   Donation<br>
                                at <strong>Gauri Shankar Mandir, Opp. Red Cross Hospital, Near Dilshad Garden Metro
                                    Station. </strong>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" height="25">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/E2 Patient getting registration for check up.jpg" rel="lightbox[roadtrip]" title="Patient getting registration for check up">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_E2 Patient getting registration for check up.jpg" data-darkbox="" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/E2 GTB Team checking patients.png" rel="lightbox[roadtrip]" title="GTB Team checking patients">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_E2 GTB Team checking patients.png" data-darkbox="http://prothsahanteam.org/images/s_E2 GTB Team checking patients.png" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/E2 Johnson and Johnson company representative taking blood test.jpg" rel="lightbox[roadtrip]" title="Johnson &amp; Johnson company representative taking blood test">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_E2 Johnson and Johnson company representative taking blood test.jpg" data-darkbox="http://prothsahanteam.org/images/s_E2 Johnson and Johnson company representative taking blood test.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/drnnaajtak.jpg" rel="lightbox[roadtrip]" title="Dr. Narendra Nath (Chairman Trans Yamuna Development Board, Delhi), Vivek - President (PTeam), Mr Jitender Singh ( President- Shaheed Bhagar singh Seva Dal)">
                                    <img border="0" height="84" src="http://prothsahanteam.org/images/s_drnnaajtak.jpg" data-darkbox="http://prothsahanteam.org/images/s_drnnaajtak.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/E2 patient waing for their turn at different health checkup counters.jpg" rel="lightbox[roadtrip]" title="patient waing for their turn at different health checkup counters">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_E2 patient waing for their turn at different health checkup counters.jpg" data-darkbox="http://prothsahanteam.org/images/s_E2 patient waing for their turn at different health checkup counters.jpg"  width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/E2 people getting BP check up by OMRON.jpg" rel="lightbox[roadtrip]" title="People getting BP check up by OMRON">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_E2 people getting BP check up by OMRON.jpg" data-darkbox="http://prothsahanteam.org/images/s_E2 people getting BP check up by OMRON.jpg"  width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="25">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="3" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                            <div align="center">
                                <a name="shivaji09"></a>"BLOOD DONATION &amp; HEALTH AWARENESS CAMP"
                                <br>
                                orgainsed at Shivaji College, Delhi University, Rajouri Garden on 05 March 2009</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="3" height="25">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Blood Donation and Health Awareness Camp at shivaji college.jpg" rel="lightbox[roadtrip]" title="Blood Donation and Health Awareness Camp at shivaji college">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Blood Donation and Health Awareness Camp at shivaji college.jpg"  data-darkbox="http://prothsahanteam.org/images/s_Blood Donation and Health Awareness Camp at shivaji college.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/blood donation at progress.jpg" rel="lightbox[roadtrip]" title="blood donation at progress">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_blood donation at progress.jpg"  data-darkbox="http://prothsahanteam.org/images/s_blood donation at progress.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/blood Donation Camp Volunteers at Shivaji college.JPG" rel="lightbox[roadtrip]" title="Blood Donation Camp Volunteers at Shivaji college">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_blood Donation Camp Volunteers at Shivaji college.JPG"  data-darkbox="http://prothsahanteam.org/images/s_blood Donation Camp Volunteers at Shivaji college.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Health Awareness by Energy Imaging Centre, Delhi.jpg" rel="lightbox[roadtrip]" title="Health Awareness by Energy Imaging Centre, Delhi">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Health Awareness by Energy Imaging Centre, Delhi.jpg" data-darkbox="http://prothsahanteam.org/images/s_Health Awareness by Energy Imaging Centre, Delhi.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Our Volunteer with Rotary Blood Bank Members.JPG" rel="lightbox[roadtrip]" title="Our Volunteer with Rotary Blood Bank Members">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Our Volunteer with Rotary Blood Bank Members.JPG" data-darkbox="http://prothsahanteam.org/images/s_Our Volunteer with Rotary Blood Bank Members.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Patient Diagnosis by Energy Imaging Centre (Dr Meenakshi Sarda).JPG" rel="lightbox[roadtrip]" title="Patient Diagnosis by Energy Imaging Centre (Dr Meenakshi Sarda)">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Patient Diagnosis by Energy Imaging Centre (Dr Meenakshi Sarda).JPG" data-darkbox="http://prothsahanteam.org/images/s_Patient Diagnosis by Energy Imaging Centre (Dr Meenakshi Sarda).JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="&#10;&lt;img src=" images="" s_pteam%20president%20(mr%20vivek%20vashistha)%20and%20founder%20(mr%20alok%20vashisth)%20discussing%20with%20rotary%20club%20president.jpg"="" rel="lightbox[roadtrip]" title="PTEAM President (Mr Vivek Vashistha) &amp;  Founder (Mr Alok Vashisth) discussing with Rotary CLub President">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_PTEAM%20President%20(Mr%20Vivek%20Vashistha)%20and%20Founder%20(Mr%20Alok%20Vashisth)%20discussing%20with%20Rotary%20CLub%20President.JPG"  data-darkbox="http://prothsahanteam.org/images/s_PTEAM%20President%20(Mr%20Vivek%20Vashistha)%20and%20Founder%20(Mr%20Alok%20Vashisth)%20discussing%20with%20Rotary%20CLub%20President.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Volunteer donated blood.JPG" rel="lightbox[roadtrip]" title="Volunteer donated blood">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Volunteer donated blood.JPG" data-darkbox="http://prothsahanteam.org/images/s_Volunteer donated blood.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/Volunteers donated Blood.JPG" rel="lightbox[roadtrip]" title="Volunteers donated Blood">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_Volunteers donated Blood.JPG"  data-darkbox="http://prothsahanteam.org/images/s_Volunteers donated Blood.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a></div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div align="center">
                                <a href="http://prothsahanteam.org/images/volunteers donating blood.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_volunteers donating blood.jpg"  data-darkbox="http://prothsahanteam.org/images/s_volunteers donating blood.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td height="30">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="3" style="box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                         <div align="center">
                                <a name="CONZERVE"></a>"CONZERVE with AIESEC Delhi University"
                                </div>
                            &nbsp; &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10" colspan="3" height="15">
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                          <div align="center">
                                <a href="http://prothsahanteam.org/images/conz1.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz1.jpg"  data-darkbox="http://prothsahanteam.org/images/s_conz1.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                          <div align="center">
                                <a href="http://prothsahanteam.org/images/conz2.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz2.jpg" data-darkbox="http://prothsahanteam.org/images/s_conz2.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                          <div align="center">
                                <a href="http://prothsahanteam.org/images/conz3.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz3.jpg" data-darkbox="http://prothsahanteam.org/images/s_conz3.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                         <div align="center">
                                <a href="http://prothsahanteam.org/images/conz4.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz4.jpg"  data-darkbox="http://prothsahanteam.org/images/s_conz4.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                         <div align="center">
                                <a href="http://prothsahanteam.org/images/conz5.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz5.jpg" data-darkbox="http://prothsahanteam.org/images/s_conz5.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                         <div align="center">
                                <a href="http://prothsahanteam.org/images/conz6.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz6.jpg" data-darkbox="http://prothsahanteam.org/images/s_conz6.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                         <div align="center">
                                <a href="http://prothsahanteam.org/images/conz7.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz7.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                         <div align="center">
                                <a href="http://prothsahanteam.org/images/conz8.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz8.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/conz9.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz9.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/conz10.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_conz10.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" class="style10" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                          <div align="center">
                                "International Interns from AIESEC"
                                </div>
                            &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="30"> <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC1.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC1.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td> <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC2.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC2.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC3.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC3.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC4.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC4.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC5.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC5.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC6.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC6.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC7.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC7.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/AIESEC8.jpg" rel="lightbox[roadtrip]" title="volunteers donating blood.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/s_AIESEC8.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                  <tr>
                        <td colspan="3" class="style10" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                          <div align="center">
                                "GOW MATA DIWAS 18 MAY"
                                </div>
                            &nbsp; &nbsp;
                        </td>
                    </tr>
                       <tr>
                        <td height="30"> <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0005.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0005.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td> <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0012.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0012.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0016.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0016.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                   <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0020.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140518-WA0020.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0003.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0003.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0004.jpg" rel="lightbox[roadtrip]" title="GOW MATA DIWAS 18 MAY.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/GOW%20MATA%20DIWAS%2018%20MAY/IMG-20140529-WA0004.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                      <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    
                     <tr>
                        <td colspan="3" class="style10" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                          <div align="center">
                                "CPR Awareness At kanpur  in Air Force Hospital"
                                </div>
                            &nbsp; &nbsp;
                        </td>
                    </tr>
                         <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0004.jpg" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0004.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0005.jpg" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0005.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0006.jpg" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0006.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                      <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                              <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0008.jpg" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140405-WA0008.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140406-WA0008.jpg" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/CPR%20Awareness%20At%20kanpur%20%20in%20Air%20Force%20Hospital/IMG-20140406-WA0008.jpg" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                             </div>
                        </td>
                    </tr>

                    <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                     <tr>
                        <td colspan="3" class="style10" style=" box-shadow: 0 2px 5px 0 rgba(0,0,0,.16), 0 2px 10px 0 rgba(0,0,0,.12);">
                          <div align="center">
                                "CPR  Awareness at Delhi Police Rajouri Garden"
                                </div>
                            &nbsp; &nbsp;
                        </td>
                    </tr>
                         <tr>
                        <td height="30">
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/prot1.JPG" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/prot1.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/prot2.JPG" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/prot2.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                        <td>
                        <div align="center">
                                <a href="http://prothsahanteam.org/images/prot4.JPG" rel="lightbox[roadtrip]" title="CPR Awareness At kanpur  in Air Force Hospital.">
                                    <img border="0" height="113" src="http://prothsahanteam.org/images/prot4.JPG" width="150" style="border-right: #333 2px solid; border-top: #333 2px solid; border-left: #333 2px solid; border-bottom: #333 2px solid"></a>
                                    </div>
                        </td>
                    </tr>
                      <tr>
                        <td height="15">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>

                </tbody></table>
            </td>
        </tr>
    </tbody></table>--%>
        <div class="row" id="gallerycontainer" runat="server"></div>
    </div>
  </div>
    <p>&nbsp;</p>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="../js/darkbox.js"></script>
</asp:Content>

