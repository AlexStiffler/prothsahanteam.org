<%@ Page Title="" Language="C#" MasterPageFile="Prothsahanteam.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="demo_Events" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="main">
        <!--Breadcrumb Section Start Here-->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>Events</h1>
                        <ol class="breadcrumb">
                            <li><a href="index.aspx">Home</a></li>
                            <li class="active">Events</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!--Breadcrumb Section End Here-->
        <div class="content-wrapper container" id="page-info">
            <div class="row">
                <div class="col-xs-12">
                    <article class="blog post-1024 page type-page status-publish hentry">
                        <div class="row">
                            <!-- <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption"> -->
                            <div class="col-xs-12 col-sm-10 col-sm-offset-1 caption">
                                <div class="vc_row wpb_row vc_row-fluid">
                                    <div class="wpb_column vc_column_container vc_col-sm-12">
                                        <div class="vc_column-inner ">
                                            <div class="wpb_wrapper">
                                                <div class="wpb_text_column wpb_content_element ">
                                                    <div class="wpb_wrapper">
                                                        <section class="missioninnerpagesection">
                                                            <h2>EVENTS</h2>
                                                            <%--<table class="table table-hover">
                                                                                <tbody>
                                                                                    <tr >
                                                                                        <td height="37">
                                                                                            <div align="center" class="undersubheading">
                                                                                                <span style="font-size: 11pt;color:#000;">
                                                                                                    <strong>S.No.</strong></span>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td height="37">
                                                                                            <div align="center" class="undersubheading"><span style="font-size: 11pt;color:#000;"><b>Events</b></span></div>
                                                                                        </td>
                                                                                        <td height="37">
                                                                                            <div align="center" class="undersubheading"><span style="font-size: 11pt;color:#000;"><b>Date</b></span></div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td width="9%" valign="top">
                                                                                            <div align="center">
                                                                                                <strong><span class="style10">1</span></strong>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td width="50%">
                                                                                            <div align="justify">
                                                                                                <p class="style10" style="margin-top: 7px">March on the streets to create awareness against <strong>Global   Warming </strong>among the citizens of Delhi. </p>
                                                                                                <div class="style10">Volunteer Suppport : <span class="style2">Shri Nav Durga Sai Chhaya   Sansthan (Regd) Dilshad Garden, Delhi</span></div>
                                                                                                <p class="style16">&nbsp;</p>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td width="17%">
                                                                                            <div align="center" class="style10">Saturday, 27th October 2007</div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top" class="style10">
                                                                                            <div align="center">
                                                                                                <strong>2</strong>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="style10">
                                                                                            <div align="justify" style="margin-top: 7px">Traffic awareness by President vivek vashistha &amp; Founder Mr Alok Vashisth in Self Defence Classes organised by Delhi Traffic Road Safety Cell in Sneh International School, Delhi.</div>
                                                                                        </td>
                                                                                        <td class="style10">
                                                                                            <div align="center" class="style10">Monday, 09th June 2008</div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top" class="style10">
                                                                                            <div align="center">
                                                                                                <strong>3</strong>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="style10">
                                                                                            <p align="justify" class="style14" style="margin-left: 5px; margin-right: 5px; margin-top: 7px;">
                                                                                                Awareness on Eye Donation, Organ Donation, Complete Body Scan &amp;&nbsp; Blood   Donation
                                                                                                <br>
                                                                                                Venue : Gauri Shankar Mandir, Opp. Red Cross Hospital, Near Dilshad Garden Metro Station.
                                                                                            </p>
                                                                                        </td>
                                                                                        <td class="style14">
                                                                                            <div align="left" class="style14">
                                                                                                <div align="center" class="style10">02/10/2008</div>
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top" class="style10">
                                                                                            <div align="center">
                                                                                                <strong>4</strong>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="style10">
                                                                                            <p align="justify" class="style14" style="margin-left: 5px; margin-right: 5px; margin-top: 7px;">
                                                                                                <strong>&nbsp;"BLOOD DONATION &amp; HEALTH AWARENESS CAMP"</strong><br>
                                                                                                Venue :  Shivaji College , Delhi University, Rajouri Garden<br>
                                                                                                <br>
                                                                                                Supported by : <em>Rotary Blood Bank </em>&amp;<strong><em>
                                                                                                    <br>
                                                                                                </em></strong><em>Energy Imaging &amp; Research Centre</em>, <em>Lawrence Road, Delhi (09312011092)</em><br>
                                                                                                <br>
                                                                                                Volunteers : Mr Ankit Gupta Team Leader-Shivaji College
                                                                                            </p>
                                                                                        </td>
                                                                                        <td class="style10">
                                                                                            <div align="center">05/03/2009</div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td valign="top" class="style10">
                                                                                            <div align="center">
                                                                                                <strong>5</strong>
                                                                                            </div>
                                                                                        </td>
                                                                                        <td class="style10" align="left">
                                                                                            <p align="left" style="margin-top: 7px;">
                                                                                                <strong><span class="style10">&nbsp;"SAY NO to Tobacco"</span><br>
                                                                                                </strong>
                                                                                            </p>

                                                                                            <p align="justify" class="style14" style="margin-left: 5px; margin-right: 5px;">The March was inaugrated by Dr Desai, Director (IHBAS),   Mr Naseeb Singh MLA, Mr Farroq Abdulah, Mrs Nafisa Ali - social activist, This march was the initiative of Indian Medical   Association and IHBAS . Prothsahanteam NGO participated in the event</p>
                                                                                            <p align="justify" class="style14" style="margin-left: 5px; margin-right: 5px;">
                                                                                                Venue - RajGhat, New Delhi
                                                                                                <br>
                                                                                                To - IMA, ITO (HQ), New   Delhi<br>
                                                                                                Time: morning: 7:30 AM&nbsp; to   9:30 AM<br>
                                                                                                followed by refreshment&nbsp;/   Magic Show / Street Play.
                                                                                            </p>
                                                                                            &nbsp;  </td>
                                                                                        <td class="style10">
                                                                                            <div align="center">31/05/2009</div>
                                                                                        </td>
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td class="style10" valign="top" align="center">
                                                                                            <strong>6</strong></td>
                                                                                        <td align="left" class="style10">
                                                                                            <p align="left" style="margin-top: 7px;">
                                                                                                <span style="font-size: 10pt; font-family: Arial,Helvetica,sans-serif"><strong>&nbsp;"CONZERVE
                  with AIESEC Delhi University"</strong></span>
                                                                                            </p>
                                                                                            <ul class="style14" type="square">
                                                                                                <li style="margin-left: 20px;">Awareness activities on Global Warming</li>
                                                                                                <li style="margin-left: 20px;">Smoking and cancer</li>
                                                                                                <li style="margin-left: 20px;">Traffic Sense &amp; Road Safety</li>
                                                                                            </ul>

                                                                                        </td>
                                                                                        <td class="style10"></td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>--%>
                                                                            

                                                            <asp:GridView ID="grdEventsDetails" runat="server" AutoGenerateColumns="false" CssClass="table table-hover">
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="S.No." HeaderStyle-Width="50px">
                                                                        <ItemTemplate>
                                                                            <%# Container.DataItemIndex + 1 %>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Events" HeaderStyle-Width="300px">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblEventName" runat="server" Text='<%#Eval("Description")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Date" HeaderStyle-Width="100px">
                                                                        <ItemTemplate>
                                                                            <asp:Label ID="lblEventDate" runat="server" Text='<%#Eval("EventDate")%>'></asp:Label>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Press Release" HeaderStyle-Width="100px">
                                                                        <ItemTemplate>
                                                                            <a href='<%#Eval("PressReleaseFilePath") %>' target="_blank">
                                                                                <img src="img/press_icon.png" class="img-center event-icon" /></a>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                     <asp:TemplateField HeaderText="Image Gallery" HeaderStyle-Width="100px">
                                                                        <ItemTemplate>
                                                                            <a href='<%#Eval("ImageFilePath") %>' target="_blank">
                                                                                <img src="img/icon-gallery.png"class="img-center event-icon" /></a>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                 <%--   <asp:TemplateField HeaderText="Image Gallery" HeaderStyle-Width="100px">
                                                                        <ItemTemplate>
                                                                            <asp:Image ID="lblImage" runat="server" ImageUrl='<%#Eval("ImageFilePath")%>' onerror="NoImage(this)"
                                                                                Width="50px" Height="50px" />
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>--%>

                                                                </Columns>
                                                            </asp:GridView>
                                                        </section>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
