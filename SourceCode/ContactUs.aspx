<%@ Page Title="" Language="C#" MasterPageFile="Prothsahanteam.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="demo_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Contact Us</h1>
                        <ol class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li class="active">Contact Us</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
        <!--Breadcrumb Section End Here-->
        <div class="content-wrapper container" id="page-info">
            <div class="row">
                <div class="col-xs-12 col-sm-6 contact-form">
                    <div class="col-xs-12" id="success"></div>
                    <h2 class="head">Write to us</h2>
                    <div>
                        <div class="screen-reader-response"></div>
                        <div class="row">
                            <div class="form-group col-xs-12 col-sm-6">
                                <label for="name">Name<span>*</span></label><span class="wpcf7-form-control-wrap text-821">
                                    <asp:TextBox ID="txtName" runat="server" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" aria-required="true" aria-invalid="false"></asp:TextBox>
                                    <%--<input type="text" name="text-821" value="" size="40" >--%></span>
                            </div>
                            <div class="form-group col-xs-12 col-sm-6">
                                <label for="email">Email<span>*</span></label><span class="wpcf7-form-control-wrap email-959">
                                    <asp:TextBox runat="server" type="email" name="email-959" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control" ID="txtemail" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sub">Subject<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                <asp:TextBox runat="server" type="text" name="text-674" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtsub" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                        </div>
                        <div class="form-group">
                            <label for="sub">Message<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                <asp:TextBox runat="server" type="text" name="text-674" TextMode="MultiLine" Rows="5" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtMsg" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                        </div>
                        <div class="form-group">
                            <label for="sub">City<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                <asp:TextBox runat="server" type="text" name="text-674" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtCity" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                        </div>
                        <div class="form-group">
                            <label for="sub">Country<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                    <asp:DropDownList ID="ddlCountry" runat="server">
                                    <asp:ListItem value="">Select a Country</asp:ListItem>
                                    <asp:ListItem value="INDIA">INDIA</asp:ListItem>
                                    <asp:ListItem value="AFGHANISTAN">AFGHANISTAN</asp:ListItem>
                                    <asp:ListItem value="ALBANIA">ALBANIA</asp:ListItem>
                                    <asp:ListItem value="ALGERIA">ALGERIA</asp:ListItem>
                                    <asp:ListItem value="AMERICAN SAMOA">AMERICAN SAMOA</asp:ListItem>
                                    <asp:ListItem value="ANDORRA">ANDORRA</asp:ListItem>
                                    <asp:ListItem value="ANGOLA">ANGOLA</asp:ListItem>
                                    <asp:ListItem value="ANGUILLA">ANGUILLA</asp:ListItem>
                                    <asp:ListItem value="ANTARCTICA">ANTARCTICA</asp:ListItem>
                                    <asp:ListItem value="ANTIGUA AND BARBUDA">ANTIGUA AND BARBUDA</asp:ListItem>
                                    <asp:ListItem value="ARGENTINA">ARGENTINA</asp:ListItem>
                                    <asp:ListItem value="ARMENIA">ARMENIA</asp:ListItem>
                                    <asp:ListItem value="ARUBA">ARUBA</asp:ListItem>
                                    <asp:ListItem value="AUSTRALIA">AUSTRALIA</asp:ListItem>
                                    <asp:ListItem value="AUSTRIA">AUSTRIA</asp:ListItem>
                                    <asp:ListItem value="AZERBAIJAN">AZERBAIJAN</asp:ListItem>
                                    <asp:ListItem value="BAHAMAS">BAHAMAS</asp:ListItem>
                                    <asp:ListItem value="BAHRAIN">BAHRAIN</asp:ListItem>
                                    <asp:ListItem value="BANGLADESH">BANGLADESH</asp:ListItem>
                                    <asp:ListItem value="BARBADOS">BARBADOS</asp:ListItem>
                                    <asp:ListItem value="BELARUS">BELARUS</asp:ListItem>
                                    <asp:ListItem value="BELGIUM">BELGIUM</asp:ListItem>
                                    <asp:ListItem value="BELIZE">BELIZE</asp:ListItem>
                                    <asp:ListItem value="BENIN">BENIN</asp:ListItem>
                                    <asp:ListItem value="BERMUDA">BERMUDA</asp:ListItem>
                                    <asp:ListItem value="BHUTAN">BHUTAN</asp:ListItem>
                                    <asp:ListItem value="BOLIVIA">BOLIVIA</asp:ListItem>
                                    <asp:ListItem value="BOSNIA AND HERZEGOVINA">BOSNIA AND HERZEGOVINA</asp:ListItem>
                                    <asp:ListItem value="BOTSWANA">BOTSWANA</asp:ListItem>
                                    <asp:ListItem value="BOUVET ISLAND">BOUVET ISLAND</asp:ListItem>
                                    <asp:ListItem value="BRAZIL">BRAZIL</asp:ListItem>
                                    <asp:ListItem value="BRITISH INDIAN OCEAN TERRITORY">BRITISH INDIAN OCEAN TERRITORY</asp:ListItem>
                                    <asp:ListItem value="BRUNEI">BRUNEI</asp:ListItem>
                                    <asp:ListItem value="BULGARIA">BULGARIA</asp:ListItem>
                                    <asp:ListItem value="BURKINA FASO">BURKINA FASO</asp:ListItem>
                                    <asp:ListItem value="BURUNDI">BURUNDI</asp:ListItem>
                                    <asp:ListItem value="CAMBODIA">CAMBODIA</asp:ListItem>
                                    <asp:ListItem value="CAMEROON">CAMEROON</asp:ListItem>
                                    <asp:ListItem value="CANADA">CANADA</asp:ListItem>
                                    <asp:ListItem value="CAPE VERDE">CAPE VERDE</asp:ListItem>
                                    <asp:ListItem value="CAYMAN ISLANDS">CAYMAN ISLANDS</asp:ListItem>
                                    <asp:ListItem value="CENTRAL AFRICAN REPUBLIC">CENTRAL AFRICAN REPUBLIC</asp:ListItem>
                                    <asp:ListItem value="CHAD">CHAD</asp:ListItem>
                                    <asp:ListItem value="CHILE">CHILE</asp:ListItem>
                                    <asp:ListItem value="CHINA">CHINA</asp:ListItem>
                                    <asp:ListItem value="CHRISTMAS ISLAND">CHRISTMAS ISLAND</asp:ListItem>
                                    <asp:ListItem value="COCOS (KEELING) ISLANDS">COCOS (KEELING) ISLANDS</asp:ListItem>
                                    <asp:ListItem value="COLOMBIA">COLOMBIA</asp:ListItem>
                                    <asp:ListItem value="COMOROS">COMOROS</asp:ListItem>
                                    <asp:ListItem value="CONGO">CONGO</asp:ListItem>
                                    <asp:ListItem value="CONGO (DRC)">CONGO (DRC)</asp:ListItem>
                                    <asp:ListItem value="COOK ISLANDS">COOK ISLANDS</asp:ListItem>
                                    <asp:ListItem value="COSTA RICA">COSTA RICA</asp:ListItem>
                                    <asp:ListItem value="CÔTE DIVOIRE">CÔTE DIVOIRE</asp:ListItem>
                                    <asp:ListItem value="CROATIA (HRVATSKA)">CROATIA (HRVATSKA)</asp:ListItem>
                                    <asp:ListItem value="CUBA">CUBA</asp:ListItem>
                                    <asp:ListItem value="CYPRUS">CYPRUS</asp:ListItem>
                                    <asp:ListItem value="CZECH REPUBLIC">CZECH REPUBLIC</asp:ListItem>
                                    <asp:ListItem value="DENMARK">DENMARK</asp:ListItem>
                                    <asp:ListItem value="DJIBOUTI">DJIBOUTI</asp:ListItem>
                                    <asp:ListItem value="DOMINICA">DOMINICA</asp:ListItem>
                                    <asp:ListItem value="DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</asp:ListItem>
                                    <asp:ListItem value="EAST TIMOR">EAST TIMOR</asp:ListItem>
                                    <asp:ListItem value="ECUADOR">ECUADOR</asp:ListItem>
                                    <asp:ListItem value="EGYPT">EGYPT</asp:ListItem>
                                    <asp:ListItem value="EL SALVADOR">EL SALVADOR</asp:ListItem>
                                    <asp:ListItem value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</asp:ListItem>
                                    <asp:ListItem value="ERITREA">ERITREA</asp:ListItem>
                                    <asp:ListItem value="ESTONIA">ESTONIA</asp:ListItem>
                                    <asp:ListItem value="ETHIOPIA">ETHIOPIA</asp:ListItem>
                                    <asp:ListItem value="FALKLAND ISLANDS (ISLAS MALVINAS)">FALKLAND ISLANDS (ISLAS MALVINAS)</asp:ListItem>
                                    <asp:ListItem value="FAROE ISLANDS">FAROE ISLANDS</asp:ListItem>
                                    <asp:ListItem value="FIJI ISLANDS">FIJI ISLANDS</asp:ListItem>
                                    <asp:ListItem value="FINLAND">FINLAND</asp:ListItem>
                                    <asp:ListItem value="FRANCE">FRANCE</asp:ListItem>
                                    <asp:ListItem value="FRENCH GUIANA">FRENCH GUIANA</asp:ListItem>
                                    <asp:ListItem value="FRENCH POLYNESIA">FRENCH POLYNESIA</asp:ListItem>
                                    <asp:ListItem value="FRENCH SOUTHERN AND ANTARCTIC LANDS">FRENCH SOUTHERN AND ANTARCTIC LANDS</asp:ListItem>
                                    <asp:ListItem value="GABON">GABON</asp:ListItem>
                                    <asp:ListItem value="GAMBIA">GAMBIA</asp:ListItem>
                                    <asp:ListItem value="GEORGIA">GEORGIA</asp:ListItem>
                                    <asp:ListItem value="GERMANY">GERMANY</asp:ListItem>
                                    <asp:ListItem value="GHANA">GHANA</asp:ListItem>
                                    <asp:ListItem value="GIBRALTAR">GIBRALTAR</asp:ListItem>
                                    <asp:ListItem value="GREECE">GREECE</asp:ListItem>
                                    <asp:ListItem value="GREENLAND">GREENLAND</asp:ListItem>
                                    <asp:ListItem value="GRENADA">GRENADA</asp:ListItem>
                                    <asp:ListItem value="GUADELOUPE">GUADELOUPE</asp:ListItem>
                                    <asp:ListItem value="GUAM">GUAM</asp:ListItem>
                                    <asp:ListItem value="GUATEMALA">GUATEMALA</asp:ListItem>
                                    <asp:ListItem value="GUINEA">GUINEA</asp:ListItem>
                                    <asp:ListItem value="GUINEA-BISSAU">GUINEA-BISSAU</asp:ListItem>
                                    <asp:ListItem value="GUYANA">GUYANA</asp:ListItem>
                                    <asp:ListItem value="HAITI">HAITI</asp:ListItem>
                                    <asp:ListItem value="HEARD ISLAND AND MCDONALD ISLANDS">HEARD ISLAND AND MCDONALD ISLANDS</asp:ListItem>
                                    <asp:ListItem value="HONDURAS">HONDURAS</asp:ListItem>
                                    <asp:ListItem value="HONG KONG SAR">HONG KONG SAR</asp:ListItem>
                                    <asp:ListItem value="HUNGARY">HUNGARY</asp:ListItem>
                                    <asp:ListItem value="ICELAND">ICELAND</asp:ListItem>
                                    <asp:ListItem value="INDONESIA">INDONESIA</asp:ListItem>
                                    <asp:ListItem value="IRAN">IRAN</asp:ListItem>
                                    <asp:ListItem value="IRAQ">IRAQ</asp:ListItem>
                                    <asp:ListItem value="IRELAND">IRELAND</asp:ListItem>
                                    <asp:ListItem value="ISRAEL">ISRAEL</asp:ListItem>
                                    <asp:ListItem value="ITALY">ITALY</asp:ListItem>
                                    <asp:ListItem value="JAMAICA">JAMAICA</asp:ListItem>
                                    <asp:ListItem value="JAPAN">JAPAN</asp:ListItem>
                                    <asp:ListItem value="JORDAN">JORDAN</asp:ListItem>
                                    <asp:ListItem value="KAZAKHSTAN">KAZAKHSTAN</asp:ListItem>
                                    <asp:ListItem value="KENYA">KENYA</asp:ListItem>
                                    <asp:ListItem value="KIRIBATI">KIRIBATI</asp:ListItem>
                                    <asp:ListItem value="KOREA">KOREA</asp:ListItem>
                                    <asp:ListItem value="KUWAIT">KUWAIT</asp:ListItem>
                                    <asp:ListItem value="KYRGYZSTAN">KYRGYZSTAN</asp:ListItem>
                                    <asp:ListItem value="LAOS">LAOS</asp:ListItem>
                                    <asp:ListItem value="LATVIA">LATVIA</asp:ListItem>
                                    <asp:ListItem value="LEBANON">LEBANON</asp:ListItem>
                                    <asp:ListItem value="LESOTHO">LESOTHO</asp:ListItem>
                                    <asp:ListItem value="LIBERIA">LIBERIA</asp:ListItem>
                                    <asp:ListItem value="LIBYA">LIBYA</asp:ListItem>
                                    <asp:ListItem value="LIECHTENSTEIN">LIECHTENSTEIN</asp:ListItem>
                                    <asp:ListItem value="LITHUANIA">LITHUANIA</asp:ListItem>
                                    <asp:ListItem value="LUXEMBOURG">LUXEMBOURG</asp:ListItem>
                                    <asp:ListItem value="MACAO SAR">MACAO SAR</asp:ListItem>
                                    <asp:ListItem value="MACEDONIA">MACEDONIA</asp:ListItem>
                                    <asp:ListItem value="MADAGASCAR">MADAGASCAR</asp:ListItem>
                                    <asp:ListItem value="MALAWI">MALAWI</asp:ListItem>
                                    <asp:ListItem value="MALAYSIA">MALAYSIA</asp:ListItem>
                                    <asp:ListItem value="MALDIVES">MALDIVES</asp:ListItem>
                                    <asp:ListItem value="MALI">MALI</asp:ListItem>
                                    <asp:ListItem value="MALTA">MALTA</asp:ListItem>
                                    <asp:ListItem value="MARSHALL ISLANDS">MARSHALL ISLANDS</asp:ListItem>
                                    <asp:ListItem value="MARTINIQUE">MARTINIQUE</asp:ListItem>
                                    <asp:ListItem value="MAURITANIA">MAURITANIA</asp:ListItem>
                                    <asp:ListItem value="MAURITIUS">MAURITIUS</asp:ListItem>
                                    <asp:ListItem value="MAYOTTE">MAYOTTE</asp:ListItem>
                                    <asp:ListItem value="MEXICO">MEXICO</asp:ListItem>
                                    <asp:ListItem value="MICRONESIA">MICRONESIA</asp:ListItem>
                                    <asp:ListItem value="MOLDOVA">MOLDOVA</asp:ListItem>
                                    <asp:ListItem value="MONACO">MONACO</asp:ListItem>
                                    <asp:ListItem value="MONGOLIA">MONGOLIA</asp:ListItem>
                                    <asp:ListItem value="MONTSERRAT">MONTSERRAT</asp:ListItem>
                                    <asp:ListItem value="MOROCCO">MOROCCO</asp:ListItem>
                                    <asp:ListItem value="MOZAMBIQUE">MOZAMBIQUE</asp:ListItem>
                                    <asp:ListItem value="MYANMAR">MYANMAR</asp:ListItem>
                                    <asp:ListItem value="NAMIBIA">NAMIBIA</asp:ListItem>
                                    <asp:ListItem value="NAURU">NAURU</asp:ListItem>
                                    <asp:ListItem value="NEPAL">NEPAL</asp:ListItem>
                                    <asp:ListItem value="NETHERLANDS">NETHERLANDS</asp:ListItem>
                                    <asp:ListItem value="NETHERLANDS ANTILLES">NETHERLANDS ANTILLES</asp:ListItem>
                                    <asp:ListItem value="NEW CALEDONIA">NEW CALEDONIA</asp:ListItem>
                                    <asp:ListItem value="NEW ZEALAND">NEW ZEALAND</asp:ListItem>
                                    <asp:ListItem value="NICARAGUA">NICARAGUA</asp:ListItem>
                                    <asp:ListItem value="NIGER">NIGER</asp:ListItem>
                                    <asp:ListItem value="NIGERIA">NIGERIA</asp:ListItem>
                                    <asp:ListItem value="NIUE">NIUE</asp:ListItem>
                                    <asp:ListItem value="NORFOLK ISLAND">NORFOLK ISLAND</asp:ListItem>
                                    <asp:ListItem value="NORTH KOREA">NORTH KOREA</asp:ListItem>
                                    <asp:ListItem value="NORTHERN MARIANA ISLANDS">NORTHERN MARIANA ISLANDS</asp:ListItem>
                                    <asp:ListItem value="NORWAY">NORWAY</asp:ListItem>
                                    <asp:ListItem value="OMAN">OMAN</asp:ListItem>
                                    <asp:ListItem value="PAKISTAN">PAKISTAN</asp:ListItem>
                                    <asp:ListItem value="PALAU">PALAU</asp:ListItem>
                                    <asp:ListItem value="PANAMA">PANAMA</asp:ListItem>
                                    <asp:ListItem value="PAPUA NEW GUINEA">PAPUA NEW GUINEA</asp:ListItem>
                                    <asp:ListItem value="PARAGUAY">PARAGUAY</asp:ListItem>
                                    <asp:ListItem value="PERU">PERU</asp:ListItem>
                                    <asp:ListItem value="PHILIPPINES">PHILIPPINES</asp:ListItem>
                                    <asp:ListItem value="PITCAIRN ISLANDS">PITCAIRN ISLANDS</asp:ListItem>
                                    <asp:ListItem value="POLAND">POLAND</asp:ListItem>
                                    <asp:ListItem value="PORTUGAL">PORTUGAL</asp:ListItem>
                                    <asp:ListItem value="PUERTO RICO">PUERTO RICO</asp:ListItem>
                                    <asp:ListItem value="QATAR">QATAR</asp:ListItem>
                                    <asp:ListItem value="REUNION">REUNION</asp:ListItem>
                                    <asp:ListItem value="ROMANIA">ROMANIA</asp:ListItem>
                                    <asp:ListItem value="RUSSIA">RUSSIA</asp:ListItem>
                                    <asp:ListItem value="RWANDA">RWANDA</asp:ListItem>
                                    <asp:ListItem value="SAMOA">SAMOA</asp:ListItem>
                                    <asp:ListItem value="SAN MARINO">SAN MARINO</asp:ListItem>
                                    <asp:ListItem value="SÃO TOMÉ AND PRÍNCIPE">SÃO TOMÉ AND PRÍNCIPE</asp:ListItem>
                                    <asp:ListItem value="SAUDI ARABIA">SAUDI ARABIA</asp:ListItem>
                                    <asp:ListItem value="SENEGAL">SENEGAL</asp:ListItem>
                                    <asp:ListItem value="SERBIA AND MONTENEGRO">SERBIA AND MONTENEGRO</asp:ListItem>
                                    <asp:ListItem value="SEYCHELLES">SEYCHELLES</asp:ListItem>
                                    <asp:ListItem value="SIERRA LEONE">SIERRA LEONE</asp:ListItem>
                                    <asp:ListItem value="SINGAPORE">SINGAPORE</asp:ListItem>
                                    <asp:ListItem value="SLOVAKIA">SLOVAKIA</asp:ListItem>
                                    <asp:ListItem value="SLOVENIA">SLOVENIA</asp:ListItem>
                                    <asp:ListItem value="SOLOMON ISLANDS">SOLOMON ISLANDS</asp:ListItem>
                                    <asp:ListItem value="SOMALIA">SOMALIA</asp:ListItem>
                                    <asp:ListItem value="SOUTH AFRICA">SOUTH AFRICA</asp:ListItem>
                                    <asp:ListItem value="SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</asp:ListItem>
                                    <asp:ListItem value="SPAIN">SPAIN</asp:ListItem>
                                    <asp:ListItem value="SRI LANKA">SRI LANKA</asp:ListItem>
                                    <asp:ListItem value="ST. HELENA">ST. HELENA</asp:ListItem>
                                    <asp:ListItem value="ST. KITTS AND NEVIS">ST. KITTS AND NEVIS</asp:ListItem>
                                    <asp:ListItem value="ST. LUCIA">ST. LUCIA</asp:ListItem>
                                    <asp:ListItem value="ST. PIERRE AND MIQUELON">ST. PIERRE AND MIQUELON</asp:ListItem>
                                    <asp:ListItem value="ST. VINCENT AND THE GRENADINES">ST. VINCENT AND THE GRENADINES</asp:ListItem>
                                    <asp:ListItem value="SUDAN">SUDAN</asp:ListItem>
                                    <asp:ListItem value="SURINAME">SURINAME</asp:ListItem>
                                    <asp:ListItem value="SVALBARD AND JAN MAYEN">SVALBARD AND JAN MAYEN</asp:ListItem>
                                    <asp:ListItem value="SWAZILAND">SWAZILAND</asp:ListItem>
                                    <asp:ListItem value="SWEDEN">SWEDEN</asp:ListItem>
                                    <asp:ListItem value="SWITZERLAND">SWITZERLAND</asp:ListItem>
                                    <asp:ListItem value="SYRIA">SYRIA</asp:ListItem>
                                    <asp:ListItem value="TAIWAN">TAIWAN</asp:ListItem>
                                    <asp:ListItem value="TAJIKISTAN">TAJIKISTAN</asp:ListItem>
                                    <asp:ListItem value="TANZANIA">TANZANIA</asp:ListItem>
                                    <asp:ListItem value="THAILAND">THAILAND</asp:ListItem>
                                    <asp:ListItem value="TOGO">TOGO</asp:ListItem>
                                    <asp:ListItem value="TOKELAU">TOKELAU</asp:ListItem>
                                    <asp:ListItem value="TONGA">TONGA</asp:ListItem>
                                    <asp:ListItem value="TRINIDAD AND TOBAGO">TRINIDAD AND TOBAGO</asp:ListItem>
                                    <asp:ListItem value="TUNISIA">TUNISIA</asp:ListItem>
                                    <asp:ListItem value="TURKEY">TURKEY</asp:ListItem>
                                    <asp:ListItem value="TURKMENISTAN">TURKMENISTAN</asp:ListItem>
                                    <asp:ListItem value="TURKS AND CAICOS ISLANDS">TURKS AND CAICOS ISLANDS</asp:ListItem>
                                    <asp:ListItem value="TUVALU">TUVALU</asp:ListItem>
                                    <asp:ListItem value="UGANDA">UGANDA</asp:ListItem>
                                    <asp:ListItem value="UKRAINE">UKRAINE</asp:ListItem>
                                    <asp:ListItem value="UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</asp:ListItem>
                                    <asp:ListItem value="UNITED KINGDOM">UNITED KINGDOM</asp:ListItem>
                                    <asp:ListItem value="UNITED STATES">UNITED STATES</asp:ListItem>
                                    <asp:ListItem value="UNITED STATES MINOR OUTLYING ISLANDS">UNITED STATES MINOR OUTLYING ISLANDS</asp:ListItem>
                                    <asp:ListItem value="URUGUAY">URUGUAY</asp:ListItem>
                                    <asp:ListItem value="UZBEKISTAN">UZBEKISTAN</asp:ListItem>
                                    <asp:ListItem value="VANUATU">VANUATU</asp:ListItem>
                                    <asp:ListItem value="VATICAN CITY">VATICAN CITY</asp:ListItem>
                                    <asp:ListItem value="VENEZUELA">VENEZUELA</asp:ListItem>
                                    <asp:ListItem value="VIET NAM">VIET NAM</asp:ListItem>
                                    <asp:ListItem value="VIRGIN ISLANDS">VIRGIN ISLANDS</asp:ListItem>
                                    <asp:ListItem value="VIRGIN ISLANDS (BRITISH)">VIRGIN ISLANDS (BRITISH)</asp:ListItem>
                                    <asp:ListItem value="WALLIS AND FUTUNA">WALLIS AND FUTUNA</asp:ListItem>
                                    <asp:ListItem value="YEMEN">YEMEN</asp:ListItem>
                                    <asp:ListItem value="ZAMBIA">ZAMBIA</asp:ListItem>
                                    <asp:ListItem value="ZIMBABWE">ZIMBABWE</asp:ListItem>
                               </asp:DropDownList>
                                <%--<asp:TextBox runat="server" type="text" name="text-674" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtCountry" aria-required="true" aria-invalid="false"></asp:TextBox></span>--%>
                        </div>
                        <div class="form-group">
                            <label for="sub">Phone Number<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                <asp:TextBox runat="server" type="text" name="text-674" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtPhoneNo" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                        </div>
                        <div class="form-group">
                            <label for="sub">Address<span>*</span></label><br>
                            <span class="wpcf7-form-control-wrap text-674">
                                <asp:TextBox runat="server" type="text" TextMode="MultiLine" Rows="8" name="text-674" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" ID="txtAddress" aria-required="true" aria-invalid="false"></asp:TextBox></span>
                        </div>
                        <center><div class="g-recaptcha" data-sitekey="6LebwjYUAAAAAPAwvp3oWh11JXo1Ow4CIJUGLsYS"></div></center>
                        <p>
                            <asp:Button ID="btnSubmit" runat="server" CssClass="more-link btn btn-default" Text="Submit" OnClick="btnSubmit_Click" />
                            <%--<input type="submit" value="Submit" class="more-link btn btn-default" id="submit">--%>
                            <img class="ajax-loader" src="#" alt="Sending ..." style="visibility: hidden;">
                        </p>
                    </div>
                    <div class="row">
                        <hr />
                        <div class="col-sm-12">
                            <h2><strong>Our Banker Detail</strong></h2>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p>A/c Detail : </p>
                                        </div>
                                        <div class="col-sm-9">
                                            <p>023354 </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p>Address : </p>
                                        </div>
                                        <div class="col-sm-9">
                                            <p>Corporation Bank, Dilshad Garden </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p>Branch Code : </p>
                                        </div>
                                        <div class="col-sm-9">
                                            <p>463 ABB </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p><b>Anywhwere Branch Banking Delhi-110095, INDIA</b></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p>Our PAN No : </p>
                                        </div>
                                        <div class="col-sm-9">
                                            <p>AAAAP7473K </p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <p><b>All donations are Tax exempted u/s 80g</b></p>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <p>E-mail </p>
                                        </div>
                                        <div class="col-sm-9">
                                            <p>info@prothsahanteam.org | prothsahanteam@gmail.com</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-5 col-sm-offset-1 contact-address">
                    <div class="vc_row wpb_row vc_row-fluid">
                        <div class="wpb_column vc_column_container vc_col-sm-12">
                            <div class="vc_column-inner ">
                                <div class="wpb_wrapper">
                                    <div class="wpb_text_column wpb_content_element ">
                                        <div class="wpb_wrapper">
                                            <h2><strong>Regd. Address</strong></h2>
                                            <address>
                                                <span><strong>Address :</strong><span>T-301, 3rd Floor, Chetak Complex, LSC, Pocket B & E Dilshad Garden, Delhi - 110095. INDIA</span></span><span><strong>Telefax  :</strong><span><a href="tel:">91-11-22131125<br>
                                                </a></span></span>
                                            </address>
                                            <hr />
                                            <h4 class="h4-branch"><strong>Branch Office(s)</strong></h4>
                                            <h3><strong>ROHTAK (HARYANA)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Ms Rachna Bajaj</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>126, Sect -1 , Rohtak, Haryana</span>
                                                </span>
                                            </address>
                                            <h3><strong>FARIDABAD (HARYANA)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr. Sachin Kaushik</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>Plot no-1, Sanjay Memorial Industrial Estate, Faridabad, Haryana</span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-981017772</span>
                                                </span>
                                            </address>
                                            <h3><strong>GURGAON (HARYANA)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr Vipin Tyagi</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>N-300, Ist floor, Mayfield Gdn, Sec-51, Gurgaon</span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-9818140741</span>
                                                </span>
                                            </address>
                                            <h3><strong>MUMBAI (MAHARASHTRA)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr Devender Vartak</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>604A, Bhairavi bidg,Doordarsh CHS, Gokuldham, Gurgaon (E) Mumbai-400063</span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-9818140741</span>
                                                </span>
                                            </address>
                                            <h3><strong>BHOPAL (M.P)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr. Vivek Agarwal</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>303, vivek Apartment –III Et 132 Lala Lajpat Rai Society, Bhopal</span>
                                                </span>
                                            </address>
                                            <h3><strong>ROHINI (North Delhi)</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Ms Sushma Sinha</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>310, Agarwal Plaza, Netaji Subhash Place Lala Lajpat Rai Society, Bhopal Place New Delhi-110085</span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-9212317673</span>
                                                </span>
                                            </address>
                                            <h3><strong>UTTAR PRADESH</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr Ramesh Chandra Sharma</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>Village Dujana, Distt. Gautam Budh Nagar </span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-9818477311</span>
                                                </span>
                                            </address>
                                            <h3><strong>SURYA NAGAR</strong></h3>
                                            <address>
                                                <span>
                                                    <strong>Contact Person :</strong>
                                                    <span>Mr. Alok Vashisth</span>
                                                </span>
                                                <span>
                                                    <strong>Address :</strong><span>A-10, G-1, Surya Nagar, GZB </span>
                                                </span>
                                                <span>
                                                    <strong>Tel :</strong><span>91-9810220677</span>
                                                </span>
                                            </address>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style>
                        .col-sm-offset-1 {
                            margin-left: 8% !important;
                        }

                        @media (max-width: 767px) {
                            .col-sm-offset-1 {
                                margin-left: 2.333333% !important;
                            }
                        }
                    </style>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
