<%@ Page Title="" Language="VB" MasterPageFile="Prothsahanteam.master" AutoEventWireup="false" CodeFile="Donate.aspx.vb" Inherits="demo_Donate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section" style="background-image: url(http://www.cry.org/wp-content/uploads/2015/04/breadcrumb-bg.jpg)">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Donation</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Donation</li>
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
                                                    <h2>DONATION</h2>
                                                </div>
                                                <div class="col-sm-4">
                                                     <h4 class="h4-branch"><strong> Select Type of Donation </strong></h4>
                                                        </div>
                                                   <div class="col-sm-12">
                                                    <asp:DropDownList ID="ddlDonationType"  class="form-control" runat="server" style="border: 1px solid #00C851;">
                                                        <asp:ListItem value="">Select</asp:ListItem>
                                                        <asp:ListItem value="1">Financial Donation</asp:ListItem>
                                                        <asp:ListItem value="2">Stationary Donation</asp:ListItem>
                                                        <asp:ListItem value="3">Cloth Donation</asp:ListItem>
                                                        <asp:ListItem value="4">Organ Donation</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <div class="col-sm-12">
                                                     <h4 class="h4-branch"><strong>Personal Detail</strong></h4>
                                                </div>
                                             
                                            </div>
                                            <div class="row">
                                                <div style="display: block;" class="onetimeforminput">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="row">
                                                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                                                <div class="form-group">
                                                                    <label for="title">Title</label><br>
                                                                    <asp:DropDownList ID="ddltitle" runat="server" CssClass="form-control">
                                                                        <asp:ListItem value="">Select</asp:ListItem>
                                                                        <asp:ListItem value="Mr">Mr.</asp:ListItem>
                                                                        <asp:ListItem value="Ms">Ms.</asp:ListItem>
                                                                        <asp:ListItem value="Mrs">Mrs.</asp:ListItem>
                                                                        <asp:ListItem value="Others">Others</asp:ListItem>
                                                                    </asp:DropDownList>
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
                                                                                    <asp:DropDownList ID="ddldate" runat="server" CssClass="form-control">
                                                                                        <asp:ListItem>01</asp:ListItem>
                                                                                        <asp:ListItem>02</asp:ListItem>
                                                                                        <asp:ListItem>03</asp:ListItem>
                                                                                        <asp:ListItem>04</asp:ListItem>
                                                                                        <asp:ListItem>05</asp:ListItem>
                                                                                        <asp:ListItem>06</asp:ListItem>
                                                                                        <asp:ListItem>07</asp:ListItem>
                                                                                        <asp:ListItem>08</asp:ListItem>
                                                                                        <asp:ListItem>09</asp:ListItem>
                                                                                        <asp:ListItem>10</asp:ListItem>
                                                                                        <asp:ListItem>11</asp:ListItem>
                                                                                        <asp:ListItem>12</asp:ListItem>
                                                                                        <asp:ListItem>13</asp:ListItem>
                                                                                        <asp:ListItem>14</asp:ListItem>
                                                                                        <asp:ListItem>15</asp:ListItem>
                                                                                        <asp:ListItem>16</asp:ListItem>
                                                                                        <asp:ListItem>17</asp:ListItem>
                                                                                        <asp:ListItem>18</asp:ListItem>
                                                                                        <asp:ListItem>19</asp:ListItem>
                                                                                        <asp:ListItem>20</asp:ListItem>
                                                                                        <asp:ListItem>21</asp:ListItem>
                                                                                        <asp:ListItem>22</asp:ListItem>
                                                                                        <asp:ListItem>23</asp:ListItem>
                                                                                        <asp:ListItem>24</asp:ListItem>
                                                                                        <asp:ListItem>25</asp:ListItem>
                                                                                        <asp:ListItem>26</asp:ListItem>
                                                                                        <asp:ListItem>27</asp:ListItem>
                                                                                        <asp:ListItem>28</asp:ListItem>
                                                                                        <asp:ListItem>29</asp:ListItem>
                                                                                        <asp:ListItem>30</asp:ListItem>
                                                                                        <asp:ListItem>31</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-12">
                                                                                    <asp:DropDownList ID="ddlMonth" runat="server" CssClass="form-control">
                                                                                        <asp:ListItem value="01">Jan</asp:ListItem>
                                                                                        <asp:ListItem value="02">Feb</asp:ListItem>
                                                                                        <asp:ListItem value="03">Mar</asp:ListItem>
                                                                                        <asp:ListItem value="04">Apr</asp:ListItem>
                                                                                        <asp:ListItem value="05">May</asp:ListItem>
                                                                                        <asp:ListItem value="06">Jun</asp:ListItem>
                                                                                        <asp:ListItem value="07">Jul</asp:ListItem>
                                                                                        <asp:ListItem value="08">Aug</asp:ListItem>
                                                                                        <asp:ListItem value="09">Sep</asp:ListItem>
                                                                                        <asp:ListItem value="10">Oct</asp:ListItem>
                                                                                        <asp:ListItem value="11">Nov</asp:ListItem>
                                                                                        <asp:ListItem value="12">Dec</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </div>
                                                                                <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                                                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="form-control">
                                                                                        <asp:ListItem>1920</asp:ListItem>
                                                                                        <asp:ListItem>1921</asp:ListItem>
                                                                                        <asp:ListItem>1922</asp:ListItem>
                                                                                        <asp:ListItem>1923</asp:ListItem>
                                                                                        <asp:ListItem>1924</asp:ListItem>
                                                                                        <asp:ListItem>1925</asp:ListItem>
                                                                                        <asp:ListItem>1926</asp:ListItem>
                                                                                        <asp:ListItem>1927</asp:ListItem>
                                                                                        <asp:ListItem>1928</asp:ListItem>
                                                                                        <asp:ListItem>1929</asp:ListItem>
                                                                                        <asp:ListItem>1930</asp:ListItem>
                                                                                        <asp:ListItem>1931</asp:ListItem>
                                                                                        <asp:ListItem>1932</asp:ListItem>
                                                                                        <asp:ListItem>1933</asp:ListItem>
                                                                                        <asp:ListItem>1934</asp:ListItem>
                                                                                        <asp:ListItem>1935</asp:ListItem>
                                                                                        <asp:ListItem>1936</asp:ListItem>
                                                                                        <asp:ListItem>1937</asp:ListItem>
                                                                                        <asp:ListItem>1938</asp:ListItem>
                                                                                        <asp:ListItem>1939</asp:ListItem>
                                                                                        <asp:ListItem>1940</asp:ListItem>
                                                                                        <asp:ListItem>1941</asp:ListItem>
                                                                                        <asp:ListItem>1942</asp:ListItem>
                                                                                        <asp:ListItem>1943</asp:ListItem>
                                                                                        <asp:ListItem>1944</asp:ListItem>
                                                                                        <asp:ListItem>1945</asp:ListItem>
                                                                                        <asp:ListItem>1946</asp:ListItem>
                                                                                        <asp:ListItem>1947</asp:ListItem>
                                                                                        <asp:ListItem>1947</asp:ListItem>
                                                                                        <asp:ListItem>1948</asp:ListItem>
                                                                                        <asp:ListItem>1949</asp:ListItem>
                                                                                        <asp:ListItem>1950</asp:ListItem>
                                                                                        <asp:ListItem>1951</asp:ListItem>
                                                                                        <asp:ListItem>1952</asp:ListItem>
                                                                                        <asp:ListItem>1953</asp:ListItem>
                                                                                        <asp:ListItem>1954</asp:ListItem>
                                                                                        <asp:ListItem>1955</asp:ListItem>
                                                                                        <asp:ListItem>1956</asp:ListItem>
                                                                                        <asp:ListItem>1957</asp:ListItem>
                                                                                        <asp:ListItem>1958</asp:ListItem>
                                                                                        <asp:ListItem>1959</asp:ListItem>
                                                                                        <asp:ListItem>1960</asp:ListItem>
                                                                                        <asp:ListItem>1961</asp:ListItem>
                                                                                        <asp:ListItem>1962</asp:ListItem>
                                                                                        <asp:ListItem>1963</asp:ListItem>
                                                                                        <asp:ListItem>1964</asp:ListItem>
                                                                                        <asp:ListItem>1965</asp:ListItem>
                                                                                        <asp:ListItem>1966</asp:ListItem>
                                                                                        <asp:ListItem>1967</asp:ListItem>
                                                                                        <asp:ListItem>1968</asp:ListItem>
                                                                                        <asp:ListItem>1969</asp:ListItem>
                                                                                        <asp:ListItem>1970</asp:ListItem>
                                                                                        <asp:ListItem>1971</asp:ListItem>
                                                                                        <asp:ListItem>1972</asp:ListItem>
                                                                                        <asp:ListItem>1973</asp:ListItem>
                                                                                        <asp:ListItem>1974</asp:ListItem>
                                                                                        <asp:ListItem>1975</asp:ListItem>
                                                                                        <asp:ListItem>1976</asp:ListItem>
                                                                                        <asp:ListItem>1977</asp:ListItem>
                                                                                        <asp:ListItem>1978</asp:ListItem>
                                                                                        <asp:ListItem>1979</asp:ListItem>
                                                                                        <asp:ListItem>1980</asp:ListItem>
                                                                                        <asp:ListItem>1981</asp:ListItem>
                                                                                        <asp:ListItem>1982</asp:ListItem>
                                                                                        <asp:ListItem>1983</asp:ListItem>
                                                                                        <asp:ListItem>1984</asp:ListItem>
                                                                                        <asp:ListItem>1985</asp:ListItem>
                                                                                        <asp:ListItem>1986</asp:ListItem>
                                                                                        <asp:ListItem>1987</asp:ListItem>
                                                                                        <asp:ListItem>1988</asp:ListItem>
                                                                                        <asp:ListItem>1989</asp:ListItem>
                                                                                        <asp:ListItem>1990</asp:ListItem>
                                                                                        <asp:ListItem>1991</asp:ListItem>
                                                                                        <asp:ListItem>1992</asp:ListItem>
                                                                                        <asp:ListItem>1993</asp:ListItem>
                                                                                        <asp:ListItem>1994</asp:ListItem>
                                                                                        <asp:ListItem>1995</asp:ListItem>
                                                                                        <asp:ListItem>1996</asp:ListItem>
                                                                                        <asp:ListItem>1997</asp:ListItem>
                                                                                        <asp:ListItem>1998</asp:ListItem>
                                                                                        <asp:ListItem>1999</asp:ListItem>
                                                                                        <asp:ListItem>2000</asp:ListItem>
                                                                                        <asp:ListItem>2001</asp:ListItem>
                                                                                        <asp:ListItem>2002</asp:ListItem>
                                                                                        <asp:ListItem>2003</asp:ListItem>
                                                                                        <asp:ListItem>2004</asp:ListItem>
                                                                                        <asp:ListItem>2005</asp:ListItem>
                                                                                        <asp:ListItem>2006</asp:ListItem>
                                                                                        <asp:ListItem>2007</asp:ListItem>
                                                                                        <asp:ListItem>2008</asp:ListItem>
                                                                                        <asp:ListItem>2009</asp:ListItem>
                                                                                        <asp:ListItem>2010</asp:ListItem>
                                                                                        <asp:ListItem>2011</asp:ListItem>
                                                                                        <asp:ListItem>2012</asp:ListItem>
                                                                                        <asp:ListItem>2013</asp:ListItem>
                                                                                        <asp:ListItem>2014</asp:ListItem>
                                                                                        <asp:ListItem>2015</asp:ListItem>
                                                                                        <asp:ListItem>2016</asp:ListItem>
                                                                                    </asp:DropDownList>
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
                                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                                <div class="form-group">
                                                                    <label for="phone">Phone</label><br>
                                                                    <input name="phone" id="phone" class="form-control" type="text">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                     <div class="col-sm-12">
                                                     <h4 class="h4-branch"><strong>Contact Detail</strong></h4>
                                                        </div>
                                                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="Organisation">Organisation Name</label><br>
                                                            <input name="Organisation" id="Organisation" class="form-control">
                                                        </div>
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
                                                                            <asp:DropDownList ID="ddlCountry" runat="server">
                                                                                <asp:ListItem value="">Select Country</asp:ListItem>
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
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="row">
                                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                                       <%-- <div class="form-group otherstate">
                                                                            <label for="State">State</label><br>
                                                                            <input name="state" id="state" class="form-control">
                                                                        </div>--%>
                                                                        <div class="form-group block" >
                                                                            <label for="listState">State</label>
                                                                            <p></p>
                                                                            <div class="form-group">
                                                                                <asp:DropDownList ID="ddlState" runat="server" CssClass="form-control">
                                                                                    <asp:ListItem value="">Select State</asp:ListItem>
                                                                                    <asp:ListItem value="ANDHRA PRADESH">ANDHRA PRADESH</asp:ListItem>
                                                                                    <asp:ListItem value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</asp:ListItem>
                                                                                    <asp:ListItem value="ASSAM">ASSAM</asp:ListItem>
                                                                                    <asp:ListItem value="BIHAR">BIHAR</asp:ListItem>
                                                                                    <asp:ListItem value="CHANDIGARH">CHANDIGARH</asp:ListItem>
                                                                                    <asp:ListItem value="CHATTISGARH">CHATTISGARH</asp:ListItem>
                                                                                    <asp:ListItem value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</asp:ListItem>
                                                                                    <asp:ListItem value="DELHI">DELHI</asp:ListItem>
                                                                                    <asp:ListItem value="GOA">GOA</asp:ListItem>
                                                                                    <asp:ListItem value="GUJARAT">GUJARAT</asp:ListItem>
                                                                                    <asp:ListItem value="HARYANA">HARYANA</asp:ListItem>
                                                                                    <asp:ListItem value="HIMACHAL PRADESH">HIMACHAL PRADESH</asp:ListItem>
                                                                                    <asp:ListItem value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</asp:ListItem>
                                                                                    <asp:ListItem value="JHARKHAND">JHARKHAND</asp:ListItem>
                                                                                    <asp:ListItem value="KARNATAKA">KARNATAKA</asp:ListItem>
                                                                                    <asp:ListItem value="KERALA">KERALA</asp:ListItem>
                                                                                    <asp:ListItem value="LAKSHADWEEP">LAKSHADWEEP</asp:ListItem>
                                                                                    <asp:ListItem value="MADHYA PRADESH">MADHYA PRADESH</asp:ListItem>
                                                                                    <asp:ListItem value="MAHARASHTRA">MAHARASHTRA</asp:ListItem>
                                                                                    <asp:ListItem value="MANIPUR">MANIPUR</asp:ListItem>
                                                                                    <asp:ListItem value="MEGHALAYA">MEGHALAYA</asp:ListItem>
                                                                                    <asp:ListItem value="MIZORAM">MIZORAM</asp:ListItem>
                                                                                    <asp:ListItem value="NAGALAND">NAGALAND</asp:ListItem>
                                                                                    <asp:ListItem value="ORISSA">ORISSA</asp:ListItem>
                                                                                    <asp:ListItem value="PONDICHERRY">PONDICHERRY</asp:ListItem>
                                                                                    <asp:ListItem value="PUNJAB">PUNJAB</asp:ListItem>
                                                                                    <asp:ListItem value="RAJASTHAN">RAJASTHAN</asp:ListItem>
                                                                                    <asp:ListItem value="SIKKIM">SIKKIM</asp:ListItem>
                                                                                    <asp:ListItem value="TAMILNADU">TAMILNADU</asp:ListItem>
                                                                                    <asp:ListItem value="TELANGANA">TELANGANA</asp:ListItem>
                                                                                    <asp:ListItem value="TRIPURA">TRIPURA</asp:ListItem>
                                                                                    <asp:ListItem value="UTTAR PRADESH">UTTAR PRADESH</asp:ListItem>
                                                                                    <asp:ListItem value="UTTARANCHAL">UTTARANCHAL</asp:ListItem>
                                                                                    <asp:ListItem value="WEST BENGAL">WEST BENGAL</asp:ListItem>
                                                                                </asp:DropDownList>
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
                                                            <asp:DropDownList ID="ddlCitizen" runat="server" CssClass="form-control">
                                                                <asp:ListItem value="">Select</asp:ListItem>
                                                                <asp:ListItem value="Indian Resident">Indian Resident</asp:ListItem>
                                                                <asp:ListItem value="Non Resident Indian">Non Resident Indian</asp:ListItem>
                                                                <asp:ListItem value="Foreign National">Foreign National</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="add-note">Additional Note</label><br>
                                                            <grammarly-ghost spellcheck="false"><div data-reactroot="" data-id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" data-gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" data-gramm="gramm" data-gramm_editor="true" class="gr_ver_2" contenteditable="true" style="position: absolute; color: transparent; overflow: hidden; white-space: pre-wrap; border-radius: 0px; box-sizing: border-box; height: 120px; width: 504.297px; margin: 29px 0px 0px 15px; padding: 6px 12px; z-index: 0; border-width: 1px; border-style: solid; background: none 0% 0% / auto repeat scroll padding-box border-box rgba(0, 0, 0, 0); top: 0px; left: 0px;"><span style="display: inline-block; line-height: 20px; color: transparent; overflow: hidden; text-align: left; float: initial; clear: none; box-sizing: border-box; vertical-align: baseline; white-space: pre-wrap; width: 100%; margin: 0px; padding: 0px; border: 0px; font-style: normal; font-variant: normal; font-weight: normal; font-stretch: normal; font-size: 14px; font-family: Lato, sans-serif; letter-spacing: normal; text-shadow: none; height: 118px;"></span><br></div></grammarly-ghost>
                                                            <textarea name="add-note" id="add-note" class="form-control" data-gramm="true" data-txt_gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" data-gramm_id="963c4bfc-c6f1-b54d-c2f8-0f2f50895ce0" spellcheck="false" data-gramm_editor="true" style="z-index: auto; position: relative; line-height: 20px; font-size: 14px; transition: none; background: transparent !important;"></textarea><grammarly-btn><div data-reactroot="" class="_e725ae-textarea_btn _e725ae-show _e725ae-field_hovered" style="z-index: 2; transform: translate(488.297px, 117px);"><div class="_e725ae-transform_wrap"><div title="Protected by Grammarly" class="_e725ae-status">&nbsp;</div></div></div></grammarly-btn>
                                                        </div>
                                                    </div>
                                                     <div class="col-sm-12">
                                                     <h4 class="h4-branch"><strong>Payment Details</strong></h4>
                                                        </div>
                                                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="payment">Mode Of Payment*</label><br>
                                                            <asp:DropDownList ID="ddlPaymentMode" runat="server" CssClass="form-control">
                                                                 <asp:ListItem value="">Select</asp:ListItem>
                                                                <asp:ListItem Value="Cheque">Cheque</asp:ListItem>
                                                                <asp:ListItem Value="DD">DD</asp:ListItem>
                                                                <asp:ListItem Value="Online Payment">Online Payment</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="transfer">Transfer Code</label><br>
                                                           <asp:TextBox ID="txtTransferCode" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="amount">Amount</label><br>
                                                           <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="DrawnOn">Drawn On</label><br>
                                                           <asp:TextBox ID="txtDrawnOn" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                                        <div class="form-group">
                                                            <label for="amount">Dated</label><br>
                                                           <input runat="server" id="txtdate" type="text" class="form-control datepicker-input" />
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="form-group taxdeclaration">
                                                            <h4>I would like&nbsp;<span><!--<select name="terms" id="terms"><asp:ListItem value="50">50%</asp:ListItem><asp:ListItem value="100">100%</asp:ListItem></select>--><input type="hidden" name="terms" id="terms" value="50"></span>  50% tax deduction on this donation.</h4>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <center><iframe src="https://www.google.com/recaptcha/api2/anchor?k=6Leu1ioUAAAAAGxSMmZXe_c24acAwUOuvxCjDRec&amp;co=aHR0cDovL3d3dy5zY2hvb2xtYW5hZ2VtZW50c29mdHdhcmUuaW46ODA.&amp;hl=en&amp;v=r20170816175713&amp;size=normal&amp;cb=ua8cuy6lq09l" title="recaptcha widget" width="304" height="78" frameborder="0" scrolling="no" sandbox="allow-forms allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups allow-popups-to-escape-sandbox"></iframe><center>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <p>&nbsp;</p>
                                        <div class="tahnkyou_popup_box" id="popup_box">
                                            <strong class="title">Thank you for choosing to donate to Prothsahan Team.</strong>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 col-lg-offset-3 col-md-offset-3 col-md-6 col-sm-6 col-xs-12">
                                        <div class="buttonshistory ">
                                            <a href="#">DONATE</a>
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
                        <hr/>
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
    <script type="text/javascript">
        $('.datepicker-input').datepicker();

        function datepick() {
            $('.datepicker-input').datepicker();
        }
    </script>
</asp:Content>

