<%@ Page Title="" Language="VB" MasterPageFile="Prothsahanteam.master" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="demo_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" style="background-image: url(http://www.cry.org/wp-content/uploads/2015/04/breadcrumb-bg.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Registration</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Join Us</li>
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
                                                    <h2>MEMBERSHIP FORM</h2>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div style="display: block;" class="onetimeforminput">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                             <div class="col-sm-12">
                                                    <h4 class="h4-branch"><strong>Personal Detail</strong></h4>
                                                        </div>
                                                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                                                <div class="form-group">
                                                                    <label for="title">Title</label><br>
                                                                    <select id="title" name="title" class="form-control" type="text">
                                                                        <option value="">Select</option>
                                                                        <option value="Mr">Mr.</option>
                                                                        <option value="Ms">Ms.</option>
                                                                        <option value="Mrs">Mrs.</option>
                                                                        <option value="Others">Others</option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="name">First Name*</label><br>
                                                                    <input name="first_name" id="first_name" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-5 col-md-5 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="last-name">Last Name*</label><br>
                                                                    <input name="last_name" id="last_name" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                            <label for="DOB">Date of Birth*</label>
                                                                        </div>
                                                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                            <div class="row">
                                                                                <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 norightpad removenorightpadformobile">
                                                                                    <select name="date" id="date">
                                                                                        <option>01</option>
                                                                                        <option>02</option>
                                                                                        <option>03</option>
                                                                                        <option>04</option>
                                                                                        <option>05</option>
                                                                                        <option>06</option>
                                                                                        <option>07</option>
                                                                                        <option>08</option>
                                                                                        <option>09</option>
                                                                                        <option>10</option>
                                                                                        <option>11</option>
                                                                                        <option>12</option>
                                                                                        <option>13</option>
                                                                                        <option>14</option>
                                                                                        <option>15</option>
                                                                                        <option>16</option>
                                                                                        <option>17</option>
                                                                                        <option>18</option>
                                                                                        <option>19</option>
                                                                                        <option>20</option>
                                                                                        <option>21</option>
                                                                                        <option>22</option>
                                                                                        <option>23</option>
                                                                                        <option>24</option>
                                                                                        <option>25</option>
                                                                                        <option>26</option>
                                                                                        <option>27</option>
                                                                                        <option>28</option>
                                                                                        <option>29</option>
                                                                                        <option>30</option>
                                                                                        <option>31</option>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                                                                                    <select name="month" id="month">
                                                                                        <option value="01">Jan</option>
                                                                                        <option value="02">Feb</option>
                                                                                        <option value="03">Mar</option>
                                                                                        <option value="04">Apr</option>
                                                                                        <option value="05">May</option>
                                                                                        <option value="06">Jun</option>
                                                                                        <option value="07">Jul</option>
                                                                                        <option value="08">Aug</option>
                                                                                        <option value="09">Sep</option>
                                                                                        <option value="10">Oct</option>
                                                                                        <option value="11">Nov</option>
                                                                                        <option value="12">Dec</option>
                                                                                    </select>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                                                    <select name="year" id="year">
                                                                                        <option>1920</option>
                                                                                        <option>1921</option>
                                                                                        <option>1922</option>
                                                                                        <option>1923</option>
                                                                                        <option>1924</option>
                                                                                        <option>1925</option>
                                                                                        <option>1926</option>
                                                                                        <option>1927</option>
                                                                                        <option>1928</option>
                                                                                        <option>1929</option>
                                                                                        <option>1930</option>
                                                                                        <option>1931</option>
                                                                                        <option>1932</option>
                                                                                        <option>1933</option>
                                                                                        <option>1934</option>
                                                                                        <option>1935</option>
                                                                                        <option>1936</option>
                                                                                        <option>1937</option>
                                                                                        <option>1938</option>
                                                                                        <option>1939</option>
                                                                                        <option>1940</option>
                                                                                        <option>1941</option>
                                                                                        <option>1942</option>
                                                                                        <option>1943</option>
                                                                                        <option>1944</option>
                                                                                        <option>1945</option>
                                                                                        <option>1946</option>
                                                                                        <option>1947</option>
                                                                                        <option>1947</option>
                                                                                        <option>1948</option>
                                                                                        <option>1949</option>
                                                                                        <option>1950</option>
                                                                                        <option>1951</option>
                                                                                        <option>1952</option>
                                                                                        <option>1953</option>
                                                                                        <option>1954</option>
                                                                                        <option>1955</option>
                                                                                        <option>1956</option>
                                                                                        <option>1957</option>
                                                                                        <option>1958</option>
                                                                                        <option>1959</option>
                                                                                        <option>1960</option>
                                                                                        <option>1961</option>
                                                                                        <option>1962</option>
                                                                                        <option>1963</option>
                                                                                        <option>1964</option>
                                                                                        <option>1965</option>
                                                                                        <option>1966</option>
                                                                                        <option>1967</option>
                                                                                        <option>1968</option>
                                                                                        <option>1969</option>
                                                                                        <option>1970</option>
                                                                                        <option>1971</option>
                                                                                        <option>1972</option>
                                                                                        <option>1973</option>
                                                                                        <option>1974</option>
                                                                                        <option>1975</option>
                                                                                        <option>1976</option>
                                                                                        <option>1977</option>
                                                                                        <option>1978</option>
                                                                                        <option>1979</option>
                                                                                        <option>1980</option>
                                                                                        <option>1981</option>
                                                                                        <option>1982</option>
                                                                                        <option>1983</option>
                                                                                        <option>1984</option>
                                                                                        <option>1985</option>
                                                                                        <option>1986</option>
                                                                                        <option>1987</option>
                                                                                        <option>1988</option>
                                                                                        <option>1989</option>
                                                                                        <option>1990</option>
                                                                                        <option>1991</option>
                                                                                        <option>1992</option>
                                                                                        <option>1993</option>
                                                                                        <option>1994</option>
                                                                                        <option>1995</option>
                                                                                        <option>1996</option>
                                                                                        <option>1997</option>
                                                                                        <option>1998</option>
                                                                                        <option>1999</option>
                                                                                        <option>2000</option>
                                                                                        <option>2001</option>
                                                                                        <option>2002</option>
                                                                                        <option>2003</option>
                                                                                        <option>2004</option>
                                                                                        <option>2005</option>
                                                                                        <option>2006</option>
                                                                                        <option>2007</option>
                                                                                        <option>2008</option>
                                                                                        <option>2009</option>
                                                                                        <option>2010</option>
                                                                                        <option>2011</option>
                                                                                        <option>2012</option>
                                                                                        <option>2013</option>
                                                                                        <option>2014</option>
                                                                                        <option>2015</option>
                                                                                        <option>2016</option>
                                                                                    </select>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="pan">PAN No</label><br>
                                                                    <input name="pan" id="pan" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="email">Email*</label><br>
                                                                    <input name="email" id="emailid" class="form-control" type="email">
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="mobile">Mobile*</label><br>
                                                                    <input name="mobile" id="mobile" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-12">
                                                     <h4 class="h4-branch"><strong>Contact Detail</strong></h4>
                                                        </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                <div class="form-group">
                                                                    <label for="address">Address*</label><br>
                                                                    <textarea name="address" id="address" class="form-control"></textarea>
                                                                </div>
                                                            </div>
                                                            <div class="col-lg-6 col-mnd-6 col-sm-6 col-xs-12">
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group">
                                                                            <label for="Country">Country*</label><br>
                                                                            <select name="listcountry" id="listcountry">
                                                                                <option value="">Select a Country</option>
                                                                                <option value="INDIA">INDIA</option>
                                                                                <option value="AFGHANISTAN">AFGHANISTAN</option>
                                                                                <option value="ALBANIA">ALBANIA</option>
                                                                                <option value="ALGERIA">ALGERIA</option>
                                                                                <option value="AMERICAN SAMOA">AMERICAN SAMOA</option>
                                                                                <option value="ANDORRA">ANDORRA</option>
                                                                                <option value="ANGOLA">ANGOLA</option>
                                                                                <option value="ANGUILLA">ANGUILLA</option>
                                                                                <option value="ANTARCTICA">ANTARCTICA</option>
                                                                                <option value="ANTIGUA AND BARBUDA">ANTIGUA AND BARBUDA</option>
                                                                                <option value="ARGENTINA">ARGENTINA</option>
                                                                                <option value="ARMENIA">ARMENIA</option>
                                                                                <option value="ARUBA">ARUBA</option>
                                                                                <option value="AUSTRALIA">AUSTRALIA</option>
                                                                                <option value="AUSTRIA">AUSTRIA</option>
                                                                                <option value="AZERBAIJAN">AZERBAIJAN</option>
                                                                                <option value="BAHAMAS">BAHAMAS</option>
                                                                                <option value="BAHRAIN">BAHRAIN</option>
                                                                                <option value="BANGLADESH">BANGLADESH</option>
                                                                                <option value="BARBADOS">BARBADOS</option>
                                                                                <option value="BELARUS">BELARUS</option>
                                                                                <option value="BELGIUM">BELGIUM</option>
                                                                                <option value="BELIZE">BELIZE</option>
                                                                                <option value="BENIN">BENIN</option>
                                                                                <option value="BERMUDA">BERMUDA</option>
                                                                                <option value="BHUTAN">BHUTAN</option>
                                                                                <option value="BOLIVIA">BOLIVIA</option>
                                                                                <option value="BOSNIA AND HERZEGOVINA">BOSNIA AND HERZEGOVINA</option>
                                                                                <option value="BOTSWANA">BOTSWANA</option>
                                                                                <option value="BOUVET ISLAND">BOUVET ISLAND</option>
                                                                                <option value="BRAZIL">BRAZIL</option>
                                                                                <option value="BRITISH INDIAN OCEAN TERRITORY">BRITISH INDIAN OCEAN TERRITORY</option>
                                                                                <option value="BRUNEI">BRUNEI</option>
                                                                                <option value="BULGARIA">BULGARIA</option>
                                                                                <option value="BURKINA FASO">BURKINA FASO</option>
                                                                                <option value="BURUNDI">BURUNDI</option>
                                                                                <option value="CAMBODIA">CAMBODIA</option>
                                                                                <option value="CAMEROON">CAMEROON</option>
                                                                                <option value="CANADA">CANADA</option>
                                                                                <option value="CAPE VERDE">CAPE VERDE</option>
                                                                                <option value="CAYMAN ISLANDS">CAYMAN ISLANDS</option>
                                                                                <option value="CENTRAL AFRICAN REPUBLIC">CENTRAL AFRICAN REPUBLIC</option>
                                                                                <option value="CHAD">CHAD</option>
                                                                                <option value="CHILE">CHILE</option>
                                                                                <option value="CHINA">CHINA</option>
                                                                                <option value="CHRISTMAS ISLAND">CHRISTMAS ISLAND</option>
                                                                                <option value="COCOS (KEELING) ISLANDS">COCOS (KEELING) ISLANDS</option>
                                                                                <option value="COLOMBIA">COLOMBIA</option>
                                                                                <option value="COMOROS">COMOROS</option>
                                                                                <option value="CONGO">CONGO</option>
                                                                                <option value="CONGO (DRC)">CONGO (DRC)</option>
                                                                                <option value="COOK ISLANDS">COOK ISLANDS</option>
                                                                                <option value="COSTA RICA">COSTA RICA</option>
                                                                                <option value="CÔTE DIVOIRE">CÔTE DIVOIRE</option>
                                                                                <option value="CROATIA (HRVATSKA)">CROATIA (HRVATSKA)</option>
                                                                                <option value="CUBA">CUBA</option>
                                                                                <option value="CYPRUS">CYPRUS</option>
                                                                                <option value="CZECH REPUBLIC">CZECH REPUBLIC</option>
                                                                                <option value="DENMARK">DENMARK</option>
                                                                                <option value="DJIBOUTI">DJIBOUTI</option>
                                                                                <option value="DOMINICA">DOMINICA</option>
                                                                                <option value="DOMINICAN REPUBLIC">DOMINICAN REPUBLIC</option>
                                                                                <option value="EAST TIMOR">EAST TIMOR</option>
                                                                                <option value="ECUADOR">ECUADOR</option>
                                                                                <option value="EGYPT">EGYPT</option>
                                                                                <option value="EL SALVADOR">EL SALVADOR</option>
                                                                                <option value="EQUATORIAL GUINEA">EQUATORIAL GUINEA</option>
                                                                                <option value="ERITREA">ERITREA</option>
                                                                                <option value="ESTONIA">ESTONIA</option>
                                                                                <option value="ETHIOPIA">ETHIOPIA</option>
                                                                                <option value="FALKLAND ISLANDS (ISLAS MALVINAS)">FALKLAND ISLANDS (ISLAS MALVINAS)</option>
                                                                                <option value="FAROE ISLANDS">FAROE ISLANDS</option>
                                                                                <option value="FIJI ISLANDS">FIJI ISLANDS</option>
                                                                                <option value="FINLAND">FINLAND</option>
                                                                                <option value="FRANCE">FRANCE</option>
                                                                                <option value="FRENCH GUIANA">FRENCH GUIANA</option>
                                                                                <option value="FRENCH POLYNESIA">FRENCH POLYNESIA</option>
                                                                                <option value="FRENCH SOUTHERN AND ANTARCTIC LANDS">FRENCH SOUTHERN AND ANTARCTIC LANDS</option>
                                                                                <option value="GABON">GABON</option>
                                                                                <option value="GAMBIA">GAMBIA</option>
                                                                                <option value="GEORGIA">GEORGIA</option>
                                                                                <option value="GERMANY">GERMANY</option>
                                                                                <option value="GHANA">GHANA</option>
                                                                                <option value="GIBRALTAR">GIBRALTAR</option>
                                                                                <option value="GREECE">GREECE</option>
                                                                                <option value="GREENLAND">GREENLAND</option>
                                                                                <option value="GRENADA">GRENADA</option>
                                                                                <option value="GUADELOUPE">GUADELOUPE</option>
                                                                                <option value="GUAM">GUAM</option>
                                                                                <option value="GUATEMALA">GUATEMALA</option>
                                                                                <option value="GUINEA">GUINEA</option>
                                                                                <option value="GUINEA-BISSAU">GUINEA-BISSAU</option>
                                                                                <option value="GUYANA">GUYANA</option>
                                                                                <option value="HAITI">HAITI</option>
                                                                                <option value="HEARD ISLAND AND MCDONALD ISLANDS">HEARD ISLAND AND MCDONALD ISLANDS</option>
                                                                                <option value="HONDURAS">HONDURAS</option>
                                                                                <option value="HONG KONG SAR">HONG KONG SAR</option>
                                                                                <option value="HUNGARY">HUNGARY</option>
                                                                                <option value="ICELAND">ICELAND</option>
                                                                                <option value="INDONESIA">INDONESIA</option>
                                                                                <option value="IRAN">IRAN</option>
                                                                                <option value="IRAQ">IRAQ</option>
                                                                                <option value="IRELAND">IRELAND</option>
                                                                                <option value="ISRAEL">ISRAEL</option>
                                                                                <option value="ITALY">ITALY</option>
                                                                                <option value="JAMAICA">JAMAICA</option>
                                                                                <option value="JAPAN">JAPAN</option>
                                                                                <option value="JORDAN">JORDAN</option>
                                                                                <option value="KAZAKHSTAN">KAZAKHSTAN</option>
                                                                                <option value="KENYA">KENYA</option>
                                                                                <option value="KIRIBATI">KIRIBATI</option>
                                                                                <option value="KOREA">KOREA</option>
                                                                                <option value="KUWAIT">KUWAIT</option>
                                                                                <option value="KYRGYZSTAN">KYRGYZSTAN</option>
                                                                                <option value="LAOS">LAOS</option>
                                                                                <option value="LATVIA">LATVIA</option>
                                                                                <option value="LEBANON">LEBANON</option>
                                                                                <option value="LESOTHO">LESOTHO</option>
                                                                                <option value="LIBERIA">LIBERIA</option>
                                                                                <option value="LIBYA">LIBYA</option>
                                                                                <option value="LIECHTENSTEIN">LIECHTENSTEIN</option>
                                                                                <option value="LITHUANIA">LITHUANIA</option>
                                                                                <option value="LUXEMBOURG">LUXEMBOURG</option>
                                                                                <option value="MACAO SAR">MACAO SAR</option>
                                                                                <option value="MACEDONIA">MACEDONIA</option>
                                                                                <option value="MADAGASCAR">MADAGASCAR</option>
                                                                                <option value="MALAWI">MALAWI</option>
                                                                                <option value="MALAYSIA">MALAYSIA</option>
                                                                                <option value="MALDIVES">MALDIVES</option>
                                                                                <option value="MALI">MALI</option>
                                                                                <option value="MALTA">MALTA</option>
                                                                                <option value="MARSHALL ISLANDS">MARSHALL ISLANDS</option>
                                                                                <option value="MARTINIQUE">MARTINIQUE</option>
                                                                                <option value="MAURITANIA">MAURITANIA</option>
                                                                                <option value="MAURITIUS">MAURITIUS</option>
                                                                                <option value="MAYOTTE">MAYOTTE</option>
                                                                                <option value="MEXICO">MEXICO</option>
                                                                                <option value="MICRONESIA">MICRONESIA</option>
                                                                                <option value="MOLDOVA">MOLDOVA</option>
                                                                                <option value="MONACO">MONACO</option>
                                                                                <option value="MONGOLIA">MONGOLIA</option>
                                                                                <option value="MONTSERRAT">MONTSERRAT</option>
                                                                                <option value="MOROCCO">MOROCCO</option>
                                                                                <option value="MOZAMBIQUE">MOZAMBIQUE</option>
                                                                                <option value="MYANMAR">MYANMAR</option>
                                                                                <option value="NAMIBIA">NAMIBIA</option>
                                                                                <option value="NAURU">NAURU</option>
                                                                                <option value="NEPAL">NEPAL</option>
                                                                                <option value="NETHERLANDS">NETHERLANDS</option>
                                                                                <option value="NETHERLANDS ANTILLES">NETHERLANDS ANTILLES</option>
                                                                                <option value="NEW CALEDONIA">NEW CALEDONIA</option>
                                                                                <option value="NEW ZEALAND">NEW ZEALAND</option>
                                                                                <option value="NICARAGUA">NICARAGUA</option>
                                                                                <option value="NIGER">NIGER</option>
                                                                                <option value="NIGERIA">NIGERIA</option>
                                                                                <option value="NIUE">NIUE</option>
                                                                                <option value="NORFOLK ISLAND">NORFOLK ISLAND</option>
                                                                                <option value="NORTH KOREA">NORTH KOREA</option>
                                                                                <option value="NORTHERN MARIANA ISLANDS">NORTHERN MARIANA ISLANDS</option>
                                                                                <option value="NORWAY">NORWAY</option>
                                                                                <option value="OMAN">OMAN</option>
                                                                                <option value="PAKISTAN">PAKISTAN</option>
                                                                                <option value="PALAU">PALAU</option>
                                                                                <option value="PANAMA">PANAMA</option>
                                                                                <option value="PAPUA NEW GUINEA">PAPUA NEW GUINEA</option>
                                                                                <option value="PARAGUAY">PARAGUAY</option>
                                                                                <option value="PERU">PERU</option>
                                                                                <option value="PHILIPPINES">PHILIPPINES</option>
                                                                                <option value="PITCAIRN ISLANDS">PITCAIRN ISLANDS</option>
                                                                                <option value="POLAND">POLAND</option>
                                                                                <option value="PORTUGAL">PORTUGAL</option>
                                                                                <option value="PUERTO RICO">PUERTO RICO</option>
                                                                                <option value="QATAR">QATAR</option>
                                                                                <option value="REUNION">REUNION</option>
                                                                                <option value="ROMANIA">ROMANIA</option>
                                                                                <option value="RUSSIA">RUSSIA</option>
                                                                                <option value="RWANDA">RWANDA</option>
                                                                                <option value="SAMOA">SAMOA</option>
                                                                                <option value="SAN MARINO">SAN MARINO</option>
                                                                                <option value="SÃO TOMÉ AND PRÍNCIPE">SÃO TOMÉ AND PRÍNCIPE</option>
                                                                                <option value="SAUDI ARABIA">SAUDI ARABIA</option>
                                                                                <option value="SENEGAL">SENEGAL</option>
                                                                                <option value="SERBIA AND MONTENEGRO">SERBIA AND MONTENEGRO</option>
                                                                                <option value="SEYCHELLES">SEYCHELLES</option>
                                                                                <option value="SIERRA LEONE">SIERRA LEONE</option>
                                                                                <option value="SINGAPORE">SINGAPORE</option>
                                                                                <option value="SLOVAKIA">SLOVAKIA</option>
                                                                                <option value="SLOVENIA">SLOVENIA</option>
                                                                                <option value="SOLOMON ISLANDS">SOLOMON ISLANDS</option>
                                                                                <option value="SOMALIA">SOMALIA</option>
                                                                                <option value="SOUTH AFRICA">SOUTH AFRICA</option>
                                                                                <option value="SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS">SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS</option>
                                                                                <option value="SPAIN">SPAIN</option>
                                                                                <option value="SRI LANKA">SRI LANKA</option>
                                                                                <option value="ST. HELENA">ST. HELENA</option>
                                                                                <option value="ST. KITTS AND NEVIS">ST. KITTS AND NEVIS</option>
                                                                                <option value="ST. LUCIA">ST. LUCIA</option>
                                                                                <option value="ST. PIERRE AND MIQUELON">ST. PIERRE AND MIQUELON</option>
                                                                                <option value="ST. VINCENT AND THE GRENADINES">ST. VINCENT AND THE GRENADINES</option>
                                                                                <option value="SUDAN">SUDAN</option>
                                                                                <option value="SURINAME">SURINAME</option>
                                                                                <option value="SVALBARD AND JAN MAYEN">SVALBARD AND JAN MAYEN</option>
                                                                                <option value="SWAZILAND">SWAZILAND</option>
                                                                                <option value="SWEDEN">SWEDEN</option>
                                                                                <option value="SWITZERLAND">SWITZERLAND</option>
                                                                                <option value="SYRIA">SYRIA</option>
                                                                                <option value="TAIWAN">TAIWAN</option>
                                                                                <option value="TAJIKISTAN">TAJIKISTAN</option>
                                                                                <option value="TANZANIA">TANZANIA</option>
                                                                                <option value="THAILAND">THAILAND</option>
                                                                                <option value="TOGO">TOGO</option>
                                                                                <option value="TOKELAU">TOKELAU</option>
                                                                                <option value="TONGA">TONGA</option>
                                                                                <option value="TRINIDAD AND TOBAGO">TRINIDAD AND TOBAGO</option>
                                                                                <option value="TUNISIA">TUNISIA</option>
                                                                                <option value="TURKEY">TURKEY</option>
                                                                                <option value="TURKMENISTAN">TURKMENISTAN</option>
                                                                                <option value="TURKS AND CAICOS ISLANDS">TURKS AND CAICOS ISLANDS</option>
                                                                                <option value="TUVALU">TUVALU</option>
                                                                                <option value="UGANDA">UGANDA</option>
                                                                                <option value="UKRAINE">UKRAINE</option>
                                                                                <option value="UNITED ARAB EMIRATES">UNITED ARAB EMIRATES</option>
                                                                                <option value="UNITED KINGDOM">UNITED KINGDOM</option>
                                                                                <option value="UNITED STATES">UNITED STATES</option>
                                                                                <option value="UNITED STATES MINOR OUTLYING ISLANDS">UNITED STATES MINOR OUTLYING ISLANDS</option>
                                                                                <option value="URUGUAY">URUGUAY</option>
                                                                                <option value="UZBEKISTAN">UZBEKISTAN</option>
                                                                                <option value="VANUATU">VANUATU</option>
                                                                                <option value="VATICAN CITY">VATICAN CITY</option>
                                                                                <option value="VENEZUELA">VENEZUELA</option>
                                                                                <option value="VIET NAM">VIET NAM</option>
                                                                                <option value="VIRGIN ISLANDS">VIRGIN ISLANDS</option>
                                                                                <option value="VIRGIN ISLANDS (BRITISH)">VIRGIN ISLANDS (BRITISH)</option>
                                                                                <option value="WALLIS AND FUTUNA">WALLIS AND FUTUNA</option>
                                                                                <option value="YEMEN">YEMEN</option>
                                                                                <option value="ZAMBIA">ZAMBIA</option>
                                                                                <option value="ZIMBABWE">ZIMBABWE</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                        <div class="form-group otherstate">
                                                                            <label for="State">State</label><br>
                                                                            <input name="state" id="state" class="form-control">
                                                                        </div>
                                                                        <div class="form-group block indianState" style="display: none">
                                                                            <label for="listState">State</label>
                                                                            <p></p>
                                                                            <div class="form-group block">
                                                                                <select name="liststate" id="liststate">
                                                                                    <option value="">Select a State</option>
                                                                                    <option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
                                                                                    <option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
                                                                                    <option value="ASSAM">ASSAM</option>
                                                                                    <option value="BIHAR">BIHAR</option>
                                                                                    <option value="CHANDIGARH">CHANDIGARH</option>
                                                                                    <option value="CHATTISGARH">CHATTISGARH</option>
                                                                                    <option value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</option>
                                                                                    <option value="DELHI">DELHI</option>
                                                                                    <option value="GOA">GOA</option>
                                                                                    <option value="GUJARAT">GUJARAT</option>
                                                                                    <option value="HARYANA">HARYANA</option>
                                                                                    <option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
                                                                                    <option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
                                                                                    <option value="JHARKHAND">JHARKHAND</option>
                                                                                    <option value="KARNATAKA">KARNATAKA</option>
                                                                                    <option value="KERALA">KERALA</option>
                                                                                    <option value="LAKSHADWEEP">LAKSHADWEEP</option>
                                                                                    <option value="MADHYA PRADESH">MADHYA PRADESH</option>
                                                                                    <option value="MAHARASHTRA">MAHARASHTRA</option>
                                                                                    <option value="MANIPUR">MANIPUR</option>
                                                                                    <option value="MEGHALAYA">MEGHALAYA</option>
                                                                                    <option value="MIZORAM">MIZORAM</option>
                                                                                    <option value="NAGALAND">NAGALAND</option>
                                                                                    <option value="ORISSA">ORISSA</option>
                                                                                    <option value="PONDICHERRY">PONDICHERRY</option>
                                                                                    <option value="PUNJAB">PUNJAB</option>
                                                                                    <option value="RAJASTHAN">RAJASTHAN</option>
                                                                                    <option value="SIKKIM">SIKKIM</option>
                                                                                    <option value="TAMILNADU">TAMILNADU</option>
                                                                                    <option value="TELANGANA">TELANGANA</option>
                                                                                    <option value="TRIPURA">TRIPURA</option>
                                                                                    <option value="UTTAR PRADESH">UTTAR PRADESH</option>
                                                                                    <option value="UTTARANCHAL">UTTARANCHAL</option>
                                                                                    <option value="WEST BENGAL">WEST BENGAL</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="city">City*</label><br>
                                                            <input name="city" id="city" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="pin">Pin/Zip Code*</label><br>
                                                            <input name="pin" id="pin" class="form-control">
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group block">
                                                            <label for="Citizenship">Citizenship*</label><br>
                                                            <select name="listiam" id="listiam">
                                                                <option value="">Select</option>
                                                                <option value="Indian Resident">Indian Resident</option>
                                                                <option value="Non Resident Indian">Non Resident Indian</option>
                                                                <option value="Foreign National">Foreign National</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="add-note">How can I help <span style="color:#00C851; font-weight:500;">Prothsahan TEAM</span></label><br>
                                                            <textarea name="add-note" id="add-note" class="form-control" data-gramm="true" data-txt_gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" data-gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" spellcheck="false" data-gramm_editor="true" style="z-index: auto; position: relative; line-height: 20px; font-size: 14px; transition: none; background: transparent !important;"></textarea><grammarly-btn><div data-reactroot="" class="_e725ae-textarea_btn _e725ae-show _e725ae-field_hovered" style="z-index: 2; transform: translate(488.297px, 117px);"><div class="_e725ae-transform_wrap"><div title="Protected by Grammarly" class="_e725ae-status">&nbsp;</div></div></div></grammarly-btn>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                         <div class="row">
                                                        <div class="col-sm-6 col-xs-12">
                                                            <div class="form-group reference">
                                                            <h4>Reference #1</h4>
                                                        </div>
                                                        </div>
                                                        <div class="col-sm-6 col-xs-12">
                                                             <div class="form-group reference">
                                                            <h4>Reference #2</h4>
                                                        </div>
                                                        </div>
                                                        </div>
                                                    <div class="row">
                                                        <div class="col-sm-6 col-xs-12">
                                                          <div class="form-group">
                                                            <label for="pin">Name</label><br>
                                                            <input name="pin" id="Text1" class="form-control">
                                                             <label for="pin">Occupation</label><br>
                                                            <input name="pin" id="Text3" class="form-control">
                                                                    <label for="pin">Address</label><br>
                                                            <input name="pin" id="Text4" class="form-control">
                                                                    <label for="pin">Contact No.</label><br>
                                                            <input name="pin" id="Text5" class="form-control">
                                                                   <label for="pin">Email</label><br>
                                                            <input name="pin" id="Text6" class="form-control">
                                                        </div>
                                                        </div>
                                                             <div class="col-sm-6 col-xs-12">
                                                              <div class="form-group">
                                                            <div class="form-group">
                                                            <label for="pin">Name</label><br>
                                                            <input name="pin" id="Text2" class="form-control">
                                                             <label for="pin">Occupation</label><br>
                                                            <input name="pin" id="Text7" class="form-control">
                                                                    <label for="pin">Address</label><br>
                                                            <input name="pin" id="Text8" class="form-control">
                                                                    <label for="pin">Contact No.</label><br>
                                                            <input name="pin" id="Text9" class="form-control">
                                                                   <label for="pin">Email</label><br>
                                                            <input name="pin" id="Text10" class="form-control">
                                                        </div>
                                                        </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <center>
                                                             <iframe src="https://www.google.com/recaptcha/api2/anchor?k=6Leu1ioUAAAAAGxSMmZXe_c24acAwUOuvxCjDRec&amp;co=aHR0cDovL3d3dy5zY2hvb2xtYW5hZ2VtZW50c29mdHdhcmUuaW46ODA.&amp;hl=en&amp;v=r20170816175713&amp;size=normal&amp;cb=ua8cuy6lq09l" title="recaptcha widget" width="304" height="78" frameborder="0" scrolling="no" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups allow-popups-to-escape-sandbox"></iframe>
                                                        </center>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <p>&nbsp;</p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-lg-offset-3 col-md-offset-3 col-md-6 col-sm-6 col-xs-12">
                                        <div class="buttonsregister btn-volunteer">
                                            <a href="#">SUBMIT</a>
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
