<%@ Page Title="" Language="C#" MasterPageFile="~/Prothsahanteam.master" AutoEventWireup="true" CodeFile="EmployeeJone.aspx.cs" Inherits="EmployeeJone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        function ValidateJobPost() {
            // debugger;
            if ($('#<%=txtApplicantName.ClientID %>').val() == "") {
                validateError('<%=txtApplicantName.ClientID %>', "Please enter employee name !");
                return false;
            }
            else {
                validateSuccess('<%=txtApplicantName.ClientID %>');
            }

            if ($('#<%=txtApplicantEmailId.ClientID %>').val() == "") {
                validateError('<%=txtApplicantEmailId.ClientID %>', "Please enter email id !");
                return false;
            }
            else {
                validateSuccess('<%=txtApplicantEmailId.ClientID %>');
            }

            if ($('#<%=FileUpload1.ClientID %>').val() == "") {
                validateError('<%=FileUpload1.ClientID %>', "Please select file !");
                return false;
            }
            else {
                validateSuccess('<%=FileUpload1.ClientID %>');
            }
        }
    </script>
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" style="background-image: url(http://www.cry.org/wp-content/uploads/2015/04/breadcrumb-bg.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Youth Empowerment (Job seekers can apply)</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Post Jobs </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Section End Here-->
        <div class="content-wrapper container" id="page-info">
            <div class="row">
                <div class="col-xs-12">
                    <article class="blog post-3664 page type-page status-publish hentry">
                        <div class="row">
                            <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption">
                                <div class="block donationdiv">
                                    <div name="onetime_donation_form" id="onetime_donation_form">
                                        <div class="block onetimepayment formdiv div">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h2>Youth Empowerment (Job seekers can apply)</h2>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="row">
                                                        <div style="display: block;" class="onetimeforminput">
                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group">
                                                                            <ul>
                                                                                <li>ProthsahanTEAM works for YOUTH EMPOWERMENT and offers following jobs.</li>
                                                                                <li>Job seekers can apply online here.</li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                   <%-- <div class="col-sm-12 table-responsive">
                                                                        <table class="table table-hover">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th scope="col">S.No.</th>
                                                                                    <th scope="col">Vacancy For</th>
                                                                                    <th scope="col">Edu. Qualification</th>
                                                                                    <th scope="col">Experience</th>
                                                                                    <th scope="col">Package</th>
                                                                                    <th scope="col">Organization Name</th>
                                                                                    <th scope="col">City</th>
                                                                                    <th scope="col">Location</th>
                                                                                    <th scope="col">Address</th>
                                                                                    <th scope="col">Contact Person</th>
                                                                                    <th scope="col">Tel. Number</th>
                                                                                    <th scope="col">Email ID</th>
                                                                                    <th scope="col">Mobile</th>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>1
                                                                                    </td>
                                                                                    <td>Sales Manager</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>1-2 years</td>
                                                                                    <td>3 Lakhs</td>
                                                                                    <td>Cigna TTK Health Insurance Co Ltd</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>Karol Bagh</td>
                                                                                    <td>Mahendra Verma</td>
                                                                                    <td>8800198147</td>
                                                                                    <td>Mahendra.verma@cignattk.in</td>
                                                                                    <td>8800198147</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>2
                                                                                    </td>
                                                                                    <td>medical hospital work</td>
                                                                                    <td>10th pass</td>
                                                                                    <td>Ot tachenician 1year</td>
                                                                                    <td>15,000</td>
                                                                                    <td>A.Gopal</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>shahdara</td>
                                                                                    <td>E80/301 jhilmil colony krishna market shahdara delhi - 110095</td>
                                                                                    <td>8010270863</td>
                                                                                    <td>9899511408</td>
                                                                                    <td>gopaldelhi78@gmail.com</td>
                                                                                    <td>8010270863</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>3
                                                                                    </td>
                                                                                    <td>medical hospital work</td>
                                                                                    <td>B.A 2nd year pursuing</td>
                                                                                    <td>3 years of eye centre</td>
                                                                                    <td>15,000</td>
                                                                                    <td>PANKAJ KUMAR</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>shahdara</td>
                                                                                    <td>E80/54 jhilmil colony krishna market shahdara delhi - 110095</td>
                                                                                    <td>9716339470</td>
                                                                                    <td>8076729042</td>
                                                                                    <td>pankajpankaj760@gmail.com</td>
                                                                                    <td>9716339470</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>4
                                                                                    </td>
                                                                                    <td>ACCOUNTANT</td>
                                                                                    <td>B COM</td>
                                                                                    <td>MINIMUM 1 YEAR</td>
                                                                                    <td>1.32 L</td>
                                                                                    <td>BVM MEDITECH</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>EAST DELHI</td>
                                                                                    <td>302 chetak complex</td>
                                                                                    <td>VIVEK</td>
                                                                                    <td>22111684</td>
                                                                                    <td>jobs@bvmmkt.com</td>
                                                                                    <td>9810220677</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>5
                                                                                    </td>
                                                                                    <td>executive asst./computer opearter</td>
                                                                                    <td>B.A. Pass</td>
                                                                                    <td>six yrs.</td>
                                                                                    <td>negotiable</td>
                                                                                    <td>others</td>
                                                                                    <td>delhi</td>
                                                                                    <td>delhi cantt</td>
                                                                                    <td>wz-156-D8, maya vihar, delhi cantt. 46</td>
                                                                                    <td>Rajbala</td>
                                                                                    <td>9811662086</td>
                                                                                    <td>rajbala37@yahoo.in</td>
                                                                                    <td>9811662086</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>6
                                                                                    </td>
                                                                                    <td>any</td>
                                                                                    <td>under graduation</td>
                                                                                    <td>1 year data entry</td>
                                                                                    <td>100000</td>
                                                                                    <td>sanjay kumar</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>raghubir nagar</td>
                                                                                    <td>F-793,</td>
                                                                                    <td>9873135592</td>
                                                                                    <td>01125352441</td>
                                                                                    <td>yadavarya7@gmail.com</td>
                                                                                    <td>9873135592</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>7
                                                                                    </td>
                                                                                    <td>office operator</td>
                                                                                    <td>10 and 12</td>
                                                                                    <td>6 year</td>
                                                                                    <td>2 lac</td>
                                                                                    <td>DJB</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>B 1314  Shastri ngr</td>
                                                                                    <td>Sanjay Gupta</td>
                                                                                    <td>8882682960</td>
                                                                                    <td>info24x7sanjay@gmail.com</td>
                                                                                    <td>8882682960</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>8
                                                                                    </td>
                                                                                    <td>comouter faculty or graphic designer</td>
                                                                                    <td>B.A . history (H ) from delhi university / diploma in comuter graphic designing &amp; animation presentation</td>
                                                                                    <td>5 years</td>
                                                                                    <td>25 k to 35 k or more</td>
                                                                                    <td>lala gianin ram chalti devi foundation ( NGO ) rohini sector -18</td>
                                                                                    <td>delhi</td>
                                                                                    <td>delhi</td>
                                                                                    <td>f4 / 63 rohini sector 16 delhi</td>
                                                                                    <td>sanjay kumar</td>
                                                                                    <td>nil</td>
                                                                                    <td>auspicioussanjay27@gmail.com</td>
                                                                                    <td>8860289736</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>9
                                                                                    </td>
                                                                                    <td>Computer operator</td>
                                                                                    <td>Graduated in Arts</td>
                                                                                    <td>4</td>
                                                                                    <td>100000</td>
                                                                                    <td>AutoCzars</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>West Delhi</td>
                                                                                    <td>L-18 Chanakya place-II</td>
                                                                                    <td>Reena Rawat</td>
                                                                                    <td>9654899450</td>
                                                                                    <td>Reena.liberty@gmail.com</td>
                                                                                    <td>9654899450</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>10
                                                                                    </td>
                                                                                    <td>Store Clerk, Data Entry Operator, Supervisor</td>
                                                                                    <td>B.A.</td>
                                                                                    <td>9 years</td>
                                                                                    <td>250000</td>
                                                                                    <td>Currently Working Experience Ministry of Home Affairs</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>North Delhi</td>
                                                                                    <td>B-842 Street No.26 Sant Nagar Burari Delhi 110084</td>
                                                                                    <td>Naveen Kumar</td>
                                                                                    <td>9971094883</td>
                                                                                    <td>naveenkr0384@gmail.com</td>
                                                                                    <td>9971094883</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>11
                                                                                    </td>
                                                                                    <td>supply boy</td>
                                                                                    <td>10th</td>
                                                                                    <td>?????? /(?? ?? ?? ) ?? ?????? ???</td>
                                                                                    <td>8-10,000 per month</td>
                                                                                    <td>S N Enterprises</td>
                                                                                    <td>Delhi</td>
                                                                                    <td>East Delhi</td>
                                                                                    <td>1&amp;2, CSC, Pocket F GTB Enclave, Delhi 93</td>
                                                                                    <td>Vinay Sharma</td>
                                                                                    <td>22131125</td>
                                                                                    <td>snemnop@gmail.com</td>
                                                                                    <td>9213096241</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>12
                                                                                    </td>
                                                                                    <td>Sales</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>Fresher/ 1 year</td>
                                                                                    <td>125,000.00 plus commission</td>
                                                                                    <td>Skytech Medical &amp; Surgical Devices</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>3617 Netaji Subhash Marg, Darya Ganj, New Delhi-110002</td>
                                                                                    <td>Anurag Seth</td>
                                                                                    <td>43528106, 23262423</td>
                                                                                    <td>care@surgicalshoppe.co.in</td>
                                                                                    <td>7053190055</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>13
                                                                                    </td>
                                                                                    <td>Marketing Manager/Assistant marketing manager/Marketing Executive/Sales &amp; Marketing Manager</td>
                                                                                    <td>B.tech Mechanical/ MBA-M&amp;S</td>
                                                                                    <td>2 to 4 Years</td>
                                                                                    <td>As per Industry</td>
                                                                                    <td>Skanda Fasteners Pvt. Ltd.</td>
                                                                                    <td>Gurgaon</td>
                                                                                    <td>Gurgaon</td>
                                                                                    <td>RICCO Industrial area</td>
                                                                                    <td>Mr.Himanshu Bhatt</td>
                                                                                    <td>09990220785</td>
                                                                                    <td>skandafasteners@gmail.com</td>
                                                                                    <td>09990220785</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>14
                                                                                    </td>
                                                                                    <td>ACCOUNTANT OR ACCOUNT ASSISTANT</td>
                                                                                    <td>B.COM (PASS), DELHI</td>
                                                                                    <td>8 YEARS</td>
                                                                                    <td>3 LAC</td>
                                                                                    <td>INDUSTRIES OR CHARTERED ACCOUNTANT</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>P-4/152 SULTAN PURI DELHI-110086</td>
                                                                                    <td>RAKESH KUMAR</td>
                                                                                    <td>9212789566</td>
                                                                                    <td>rakesh.6486@rediffmail.com</td>
                                                                                    <td>9212789566</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>15
                                                                                    </td>
                                                                                    <td>Biomedical engineer</td>
                                                                                    <td>Biomedical engineer</td>
                                                                                    <td>Work in pacemaker for at least 1 year</td>
                                                                                    <td>1.5 lacs</td>
                                                                                    <td>MEDICURE</td>
                                                                                    <td>Jaipur</td>
                                                                                    <td>Rajasthan</td>
                                                                                    <td>Opp SMS hospital</td>
                                                                                    <td>Praveen Agarwal</td>
                                                                                    <td>01412366676</td>
                                                                                    <td>Medicure.jaipur@yahoo.in</td>
                                                                                    <td>9829013316</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>16
                                                                                    </td>
                                                                                    <td>CLINICAL SPECIALIST</td>
                                                                                    <td>B.SC / B PHARMA/ M SC</td>
                                                                                    <td>PREFERRABLE</td>
                                                                                    <td>NEGOTIABLE</td>
                                                                                    <td>INMITO MEDITECH P LTD</td>
                                                                                    <td>DELHI / GURGAON</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>501, 5TH FLOOR, PARAS TRADE CENTRE, GURGAON FBD EXPRESS WAY</td>
                                                                                    <td>MR VIPIN TYAGI</td>
                                                                                    <td>9818140741</td>
                                                                                    <td>vipin.kumar@inmito.com</td>
                                                                                    <td>9818140741</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>17
                                                                                    </td>
                                                                                    <td>SALES EXECUTIVE- ORTHO</td>
                                                                                    <td>B.SC / B PHARMA</td>
                                                                                    <td>PREFERRABLE</td>
                                                                                    <td>NEGOTIABLE</td>
                                                                                    <td>INMITO MEDITECH P LTD</td>
                                                                                    <td>DELHI / GURGAON</td>
                                                                                    <td>DELHI</td>
                                                                                    <td>501, 5TH FLOOR, PARAS TRADE CENTRE, GURGAON FBD EXPRESS WAY</td>
                                                                                    <td>MR VIPIN TYAGI</td>
                                                                                    <td>9818140741</td>
                                                                                    <td>vipin.kumar@inmito.com</td>
                                                                                    <td>9818140741</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>18
                                                                                    </td>
                                                                                    <td>COMPUTER OPERATOR</td>
                                                                                    <td>Graduate, Good English</td>
                                                                                    <td>4 to 5 year</td>
                                                                                    <td>negotiable</td>
                                                                                    <td>Spencer IndiaTechnologies P Ltd</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>Dwarka</td>
                                                                                    <td>c 348, sector , dwarka</td>
                                                                                    <td>Mr Manish Malik</td>
                                                                                    <td>9811432544</td>
                                                                                    <td>m.malik@spencer.it</td>
                                                                                    <td>9811432544</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>19
                                                                                    </td>
                                                                                    <td>Assistant Professor</td>
                                                                                    <td>M.Tech (VLSI)</td>
                                                                                    <td>1.5 years</td>
                                                                                    <td>3.8 lakhs</td>
                                                                                    <td>Amity University Rajasthan</td>
                                                                                    <td>Jaipur</td>
                                                                                    <td>NH-11C, Amity University- Rajasthan</td>
                                                                                    <td>F-3/9, Sector-15</td>
                                                                                    <td>Nivedita</td>
                                                                                    <td>07737887289</td>
                                                                                    <td>nivu_19@yahoo.com</td>
                                                                                    <td>07737887289</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>20
                                                                                    </td>
                                                                                    <td>Office Administrator</td>
                                                                                    <td>Graduate with proficiency in English and use of Computers</td>
                                                                                    <td>2-3 years atleast</td>
                                                                                    <td>120000-150000</td>
                                                                                    <td>Skytech Medical &amp; Surgical Devices</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>Darya Ganj</td>
                                                                                    <td>3617, Netaji Subhash Marg</td>
                                                                                    <td>Anurag Seth</td>
                                                                                    <td>23262423</td>
                                                                                    <td>anurag@surgicalshoppe.co.in</td>
                                                                                    <td>9811029000</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>21
                                                                                    </td>
                                                                                    <td>CHARTERED  ACCOUNTANT (FEMALE MARRIED)</td>
                                                                                    <td>C.A.</td>
                                                                                    <td>one yera</td>
                                                                                    <td>negotiable</td>
                                                                                    <td>R K SHARMA</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>west delhi</td>
                                                                                    <td>rajendra place</td>
                                                                                    <td>R K Sharma</td>
                                                                                    <td>01125817344</td>
                                                                                    <td>vivek@bvmmkt.com</td>
                                                                                    <td>9811199939</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>22
                                                                                    </td>
                                                                                    <td>Lab Technician</td>
                                                                                    <td>DMLT/BSc.MLT</td>
                                                                                    <td>0-3 Years</td>
                                                                                    <td>1.20 L</td>
                                                                                    <td>Accuster Technologies Pvt.Ltd.</td>
                                                                                    <td>Bangalore- 560098</td>
                                                                                    <td>Rajarajeshwari Nagar</td>
                                                                                    <td>Giriya's Enclave # 360, 43rd Main Road Ideal Homes Township</td>
                                                                                    <td>Ms. Shweta Bhardwaj</td>
                                                                                    <td>0124-4500700</td>
                                                                                    <td>shwetab.accuster@gmail.com</td>
                                                                                    <td>0124-4500707</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>23
                                                                                    </td>
                                                                                    <td>New Product Development</td>
                                                                                    <td>M.Tech Bio medical</td>
                                                                                    <td>1-3 Years</td>
                                                                                    <td>1L to 2.5L</td>
                                                                                    <td>Accuster Technologies Pvt.Ltd.</td>
                                                                                    <td>IMT-Manesar</td>
                                                                                    <td>Gurgaon Sector-47</td>
                                                                                    <td>Sector-8. Plot number-41,opposite Maruti gate no-1</td>
                                                                                    <td>Ms. Shweta Bhardwaj</td>
                                                                                    <td>0124-4500700</td>
                                                                                    <td>shwetab.accuster@gmail.com</td>
                                                                                    <td>0124-4500707</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>24
                                                                                    </td>
                                                                                    <td>Customer Care Manager</td>
                                                                                    <td>Any Post Graduate</td>
                                                                                    <td>3-6 Year</td>
                                                                                    <td>2L-4L</td>
                                                                                    <td>Accuster Technologies Pvt.Ltd.</td>
                                                                                    <td>IMT-Manesar</td>
                                                                                    <td>Gurgaon</td>
                                                                                    <td>Sector-8. Plot number-41,opposite Maruti gate no-1</td>
                                                                                    <td>Ms. Shweta Bhardwaj</td>
                                                                                    <td>0124-4500700</td>
                                                                                    <td>shwetab.accuster@gmail.com</td>
                                                                                    <td>0124-4500707</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>25
                                                                                    </td>
                                                                                    <td>female sales coordinator</td>
                                                                                    <td>MBA, GRADUATION</td>
                                                                                    <td>2yrs, Good communication</td>
                                                                                    <td>15-20k p.m.</td>
                                                                                    <td>Accuster Technologies P ltd</td>
                                                                                    <td>Gurgaon</td>
                                                                                    <td>Gurgaon</td>
                                                                                    <td>758, sector 47</td>
                                                                                    <td>Deepti Verma</td>
                                                                                    <td>0124 4362202</td>
                                                                                    <td>deepti@accuster.com</td>
                                                                                    <td>08527895901</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>26
                                                                                    </td>
                                                                                    <td>Hardware &amp; Networking Eng.</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>2Years</td>
                                                                                    <td>1.8L</td>
                                                                                    <td>Magpie Computers</td>
                                                                                    <td>Ghaziabad</td>
                                                                                    <td>Ghaziabad</td>
                                                                                    <td>B-11, Ashok Nagar</td>
                                                                                    <td>Naveen</td>
                                                                                    <td>0120-4102797</td>
                                                                                    <td>naveen@magpiecomputers.com</td>
                                                                                    <td>9810196282</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>27
                                                                                    </td>
                                                                                    <td>Accounts Assistant</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>2 years</td>
                                                                                    <td>125000</td>
                                                                                    <td>Skytech Medical &amp; Surgical Devices</td>
                                                                                    <td>NEW DELHI</td>
                                                                                    <td>Darya Ganj</td>
                                                                                    <td>3617, Netaji Subhash Marg</td>
                                                                                    <td>Anurag Seth</td>
                                                                                    <td>43528106</td>
                                                                                    <td>anurag@surgicalshoppe.co.in</td>
                                                                                    <td>9811029000</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>28
                                                                                    </td>
                                                                                    <td>Sales Manager</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>1-2 year ,</td>
                                                                                    <td>min 1.8 L</td>
                                                                                    <td>BVM Meditech P Ltd</td>
                                                                                    <td>delhi</td>
                                                                                    <td>east delhi</td>
                                                                                    <td>T 302, 3rd floor, LSC, Chetak Complex, Pocket B&amp;E Dilshad Garden</td>
                                                                                    <td>vivek vashistha</td>
                                                                                    <td>01122571912</td>
                                                                                    <td>vivek@bvmmkt.com</td>
                                                                                    <td>9810220677</td>

                                                                                </tr>
                                                                                <tr style="color: #000066;">
                                                                                    <td>29
                                                                                    </td>
                                                                                    <td>computer operator</td>
                                                                                    <td>Graduate</td>
                                                                                    <td>1-2 year</td>
                                                                                    <td>more than 1.2L</td>
                                                                                    <td>BVM Meditech Pvt Ltd</td>
                                                                                    <td>New Delhi</td>
                                                                                    <td>East Delhi</td>
                                                                                    <td>T 302, 3rd floor, LSC, Chetak Complex, Pocket B&amp;E Dilshad Garden</td>
                                                                                    <td>Vivek Vashistha</td>
                                                                                    <td>01143541684</td>
                                                                                    <td>vivek@bvmmkt.com</td>
                                                                                    <td>9810220677</td>

                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>--%>
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <h5>Select the organization to which you wan to send resume.</h5>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12 table-responsive">
                                                                            <asp:GridView ID="grdDetails" runat="server" AutoGenerateColumns="false" class="table table-hover" EmptyDataText="No records Found">
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="S.No.">
                                                                                        <ItemTemplate>
                                                                                            <%# Container.DataItemIndex + 1 %>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText=" ">
                                                                                        <ItemTemplate>
                                                                                            <asp:CheckBox ID="chkSelect" runat="server" />
                                                                                            <asp:HiddenField ID="JobId" runat="server" Value=' <%#Eval("JobId")%>' />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Post Vacancy">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("PostVacancy")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Qualification">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("Qualification")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Experience">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("Experience")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Package Offered">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("PackageOffered")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Organization Name">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("OrganizationName")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Address">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("Address")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="City">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("City")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="State">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("State")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="PinCode">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("PinCode")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Contact Person">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("ContactPerson")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Mobile No">
                                                                                        <ItemTemplate>
                                                                                            <%#Eval("MobileNo")%>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Email Id">
                                                                                        <ItemTemplate>
                                                                                            <asp:Label ID="lblEmailId" runat="server" Text='<%#Eval("EmailId")%>' />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                </Columns>
                                                                            </asp:GridView>
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-12">
                                                                            <h5>Please provide your detail.</h5>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="name">Employee Name</label><br>
                                                                            <asp:TextBox ID="txtApplicantName" runat="server" CssClass="form-control" required></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                        <div class="form-group">
                                                                            <label for="last-name">Email ID</label><br>
                                                                            <asp:TextBox ID="txtApplicantEmailId" runat="server" onblur="CheckEmailFormate(this);" CssClass="form-control"></asp:TextBox>
                                                                        </div>
                                                                        <label for="last-name" style="">Resume :</label>
                                                                        <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col-sm-6">  </div>
                                                                        <div class="col-sm-6">
                                                                            <asp:HyperLink ID="hlpressview" Target="_blank" runat="server" Visible="false"></asp:HyperLink>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p>&nbsp;</p>
                                    </div>
                                </div>
                                <p>&nbsp;</p>
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <p>&nbsp;</p>
                                        <center>
                                            <div class="g-recaptcha" data-sitekey="6LebwjYUAAAAAPAwvp3oWh11JXo1Ow4CIJUGLsYS"></div>
                                            </center>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                        <div class="buttoncareer" style="margin-top: 7px;">
                                            <asp:Button ID="btnSubmit" runat="server" Text="Apply Online" CssClass="btn btn-default" OnClick="btnSubmit_Click" OnClientClick="return ValidateJobPost();" />
                                        </div>
                                    </div>
                                </div>
                                <style>
                                    @media(min-width:320px) and (max-width:767px)
                                    {
                                        .block.onetimepayment.formdiv.div select;

                                    {
                                        background: #f8f8f8;
                                        border: 1px solid grey;
                                        overflow: visible !important;
                                    }

                                    input#donationvalue-custom
                                    {
                                        margin-bottom: 50px;
                                    }

                                    }
                                </style>
                            </div>
                        </div>
                        <hr />
                    </article>
                </div>
            </div>
        </div>
        <style>
            article.blog p
            {
                margin-bottom: 0px !important;
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

            .content-wrapper article.blog
            {
                border-bottom: none;
            }
        </style>
    </div>
</asp:Content>
