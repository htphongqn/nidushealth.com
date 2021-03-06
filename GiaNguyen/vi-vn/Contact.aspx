﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true"
    CodeBehind="Contact.aspx.cs" Inherits="nidushealth.com.vi_vn.Contact" %>
<%@ Register src="~/UIs/SlideDetail.ascx" tagname="SlideDetail" tagprefix="uc1" %>
<%@ Register src="~/UIs/CategoriesRight.ascx" tagname="CategoriesRight" tagprefix="uc3" %>
<%@ Register src="~/UIs/NewsRight.ascx" tagname="NewsRight" tagprefix="uc4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <asp:Literal ID="ltrFavicon" runat="server" EnableViewState="false"></asp:Literal>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="contentmain" runat="server">
<div class="container">
    <div class="rowmn shadow bgWhite">
      <div class="col12 cSlideImgProAds"> 
        <uc1:SlideDetail ID="SlideDetail1" runat="server" />
      </div>
      <div class="breadcrumbBox">
        <ul class="breadcrumb">
          <li><a href="/">Home</a></li>
          <li class="active">Contact us</li>
        </ul>
      </div>
      <div class="col9 cMainContent">
        <div class="box">
          <div class="innerbox ">
            <div class="contacBox">
              <div class="frm">
                <h2>Enter Your Information</h2>
                <p>Fields with an asterisk (*) indicate required information.</p>
                <hr>
                <div class="rowmn">
                  <div class="col6">
                    <div class="form-group">
                      <label for="FirstName">First name</label>
                      <input class="form-control" placeholder="Your first name" type="text" id="txtFirstName" runat="server">
                      <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="Please enter your first name"
                        ControlToValidate="txtFirstName" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                    </div>
                  </div>
                  <div class="col6">
                    <div class="form-group">
                      <label for="LastName">Last name</label>
                      <input class="form-control" placeholder="Your last name" value="" type="text" id="txtLastName" runat="server">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your last name"
                        ControlToValidate="txtLastName" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                     </div>
                  </div>
                </div>
                <div class="rowmn">
                  <div class="col6">
                    <div class="form-group">
                      <label for="EmailAddress">Email address</label>
                      <input class="form-control" placeholder="Your@email.com" type="text" id="txtEmail" runat="server">
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your email address"
                        ControlToValidate="txtEmail" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                     </div>
                  </div>
                  <div class="col6">
                    <div class="form-group">
                      <label for="EmailAddress">Phone</label>
                        <input class="form-control" placeholder="xxx-xxxx-xxx" type="text" id="txtPhone" runat="server">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your phone"
                            ControlToValidate="txtPhone" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator> 
                     </div>
                  </div>
                </div>
                <div class="rowmn">
                  <div class="col12">
                    <div class="form-group">
                      <label for="EmailAddress">Street</label>
                      <input class="form-control" placeholder="Street" type="text" id="txtAddress" runat="server">
                     </div>
                  </div>
                </div>
                <%--<div class="rowmn">
                  <div class="col4">
                    <div class="form-group form-item form-type-select form-item-State">
                      <label class="error-message" for="edit-state">State/Province</label>
                      <div style="display: block;" class="custom-select-wrapper"><span class="custom-select-label">- Select -</span>
                        <select   placeholder="State/Province" title="State/Province" class="custom-select form-select required has-errors" >
                          <option value="" selected="selected">- Select -</option>
                          <optgroup label="US States">
                          <option value="AL">Alabama</option>
                          <option value="AK">Alaska</option>
                          <option value="AZ">Arizona</option>
                          <option value="AR">Arkansas</option>
                          <option value="CA">California</option>
                          <option value="CO">Colorado</option>
                          <option value="CT">Connecticut</option>
                          <option value="DE">Delaware</option>
                          <option value="FL">Florida</option>
                          <option value="GA">Georgia</option>
                          <option value="HI">Hawaii</option>
                          <option value="ID">Idaho</option>
                          <option value="IL">Illinois</option>
                          <option value="IN">Indiana</option>
                          <option value="IA">Iowa</option>
                          <option value="KA">Kansas</option>
                          <option value="KY">Kentucky</option>
                          <option value="LA">Louisiana</option>
                          <option value="ME">Maine</option>
                          <option value="MD">Maryland</option>
                          <option value="MA">Massachusetts</option>
                          <option value="MI">Michigan</option>
                          <option value="MN">Montana</option>
                          <option value="MS">Mississippi</option>
                          <option value="MO">Missouri</option>
                          <option value="NE">Nebraska</option>
                          <option value="NV">Nevada</option>
                          <option value="NH">New Hampshire</option>
                          <option value="NJ">New Jersey</option>
                          <option value="NM">New Mexico</option>
                          <option value="NY">New York</option>
                          <option value="NC">North Carolina</option>
                          <option value="ND">North Dakota</option>
                          <option value="OH">Ohio</option>
                          <option value="OK">Oklahoma</option>
                          <option value="OR">Oregon</option>
                          <option value="PA">Pennsylvania</option>
                          <option value="RI">Rhode Island</option>
                          <option value="SC">South Carolina</option>
                          <option value="SD">South Dakota</option>
                          <option value="TN">Tennessee</option>
                          <option value="TX">Texas</option>
                          <option value="UT">Utah</option>
                          <option value="VT">Vermont</option>
                          <option value="VA">Virginia</option>
                          <option value="WA">Washington</option>
                          <option value="WV">West Virginia</option>
                          <option value="WI">Wisconsin</option>
                          <option value="WY">Wyoming</option>
                          </optgroup>
                          <optgroup label="US Territories">
                          <option value="AS">American Samoa</option>
                          <option value="AA">Armed Forces Americas</option>
                          <option value="AE">Armed Forces Europe</option>
                          <option value="AP">Armed Forces Pacific</option>
                          <option value="FM">Federated States of Micronesia</option>
                          <option value="GU">Guam</option>
                          <option value="MH">Marshall Islands</option>
                          <option value="MP">Northern Mariana Islands</option>
                          <option value="PR">Puerto Rico</option>
                          <option value="PW">Palau</option>
                          <option value="VI">Virgin Islands</option>
                          </optgroup>
                          <optgroup label="Canadian Provinces/Territories">
                          <option value="AB">Alberta</option>
                          <option value="BC">British Columbia</option>
                          <option value="MB">Manitoba</option>
                          <option value="NB">New Brunswick</option>
                          <option value="NL">Newfoundland and Labrador</option>
                          <option value="NS">Nova Scotia</option>
                          <option value="NT">Northern Territories</option>
                          <option value="NU">Nunavut</option>
                          <option value="ON">Ontario</option>
                          <option value="PE">Prince Edward Island</option>
                          <option value="QC">Quebec</option>
                          <option value="SK">Saskatchwan</option>
                          <option value="YT">Yukon</option>
                          </optgroup>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col4">
                    <div class="form-group form-item form-type-select form-item-Country">
                      <label class="error-message" for="edit-country">Country</label>
                      <div  class="custom-select-wrapper"><span class="custom-select-label">- Select -</span>
                        <select placeholder="Country" title="Country" class="custom-select form-select required has-errors" >
                          <option value="" selected="selected">- Select -</option>
                          <option value="USA">United States of America</option>
                          <option value="CAN">Canada</option>
                          <optgroup label="Countries">
                          <option value="AFG">Afghanistan</option>
                          <option value="ALA">Aland Islands</option>
                          <option value="ALB">Albania</option>
                          <option value="DZA">Algeria</option>
                          <option value="ASM">American Samoa</option>
                          <option value="AND">Andorra</option>
                          <option value="AGO">Angola</option>
                          <option value="AIA">Anguilla</option>
                          <option value="ATA">Antarctica</option>
                          <option value="ATG">Antigua and Barbuda</option>
                          <option value="ARG">Argentina</option>
                          <option value="ARM">Armenia</option>
                          <option value="AUS">Australia</option>
                          <option value="AUT">Austria</option>
                          <option value="AZE">Azerbaijan</option>
                          <option value="BHS">Bahamas</option>
                          <option value="BHR">Bahrain</option>
                          <option value="BGD">Bangladesh</option>
                          <option value="BRB">Barbados</option>
                          <option value="BLR">Belarus</option>
                          <option value="BEL">Belgium</option>
                          <option value="BLZ">Belize</option>
                          <option value="BEN">Benin</option>
                          <option value="BMU">Bermuda</option>
                          <option value="BTN">Bhutan</option>
                          <option value="BOL">Bolivia</option>
                          <option value="BIH">Bosnia and Herzegovina</option>
                          <option value="BWA">Botswana</option>
                          <option value="BVT">Bouvet Island</option>
                          <option value="BRA">Brazil</option>
                          <option value="IOT">British Indian Ocean Territory</option>
                          <option value="VGB">British Virgin Islands</option>
                          <option value="BRN">Brunei Darussalam</option>
                          <option value="BGR">Bulgaria</option>
                          <option value="BFA">Burkina Faso</option>
                          <option value="BDI">Burundi</option>
                          <option value="KHM">Cambodia</option>
                          <option value="CMR">Cameroon</option>
                          <option value="CAN">Canada</option>
                          <option value="CPV">Cape Verde</option>
                          <option value="CYM">Cayman Islands</option>
                          <option value="CAF">Central African Republic</option>
                          <option value="TCD">Chad</option>
                          <option value="CHL">Chile</option>
                          <option value="CHN">China</option>
                          <option value="CXR">Christmas Island</option>
                          <option value="CCK">Cocos (Keeling) Islands</option>
                          <option value="COL">Colombia</option>
                          <option value="COM">Comoros</option>
                          <option value="COG">Congo (Brazzaville)</option>
                          <option value="COD">Congo - Democratic Republic</option>
                          <option value="COK">Cook Islands</option>
                          <option value="CRI">Costa Rica</option>
                          <option value="CIV">Côte d'Ivoire</option>
                          <option value="HRV">Croatia</option>
                          <option value="CUB">Cuba</option>
                          <option value="CYP">Cyprus</option>
                          <option value="CZE">Czech Republic</option>
                          <option value="DNK">Denmark</option>
                          <option value="DJI">Djibouti</option>
                          <option value="DMA">Dominica</option>
                          <option value="DOM">Dominican Republic</option>
                          <option value="ECU">Ecuador</option>
                          <option value="EGY">Egypt</option>
                          <option value="SLV">El Salvador</option>
                          <option value="GNQ">Equatorial Guinea</option>
                          <option value="ERI">Eritrea</option>
                          <option value="EST">Estonia</option>
                          <option value="ETH">Ethiopia</option>
                          <option value="FLK">Falkland Islands (Malvinas)</option>
                          <option value="FRO">Faroe Islands</option>
                          <option value="FJI">Fiji</option>
                          <option value="FIN">Finland</option>
                          <option value="FRA">France</option>
                          <option value="GUF">French Guiana</option>
                          <option value="PYF">French Polynesia</option>
                          <option value="ATF">French Southern Territories</option>
                          <option value="GAB">Gabon</option>
                          <option value="GMB">Gambia</option>
                          <option value="GEO">Georgia</option>
                          <option value="DEU">Germany</option>
                          <option value="GHA">Ghana</option>
                          <option value="GIB">Gibraltar</option>
                          <option value="GRC">Greece</option>
                          <option value="GRL">Greenland</option>
                          <option value="GRD">Grenada</option>
                          <option value="GLP">Guadeloupe</option>
                          <option value="GUM">Guam</option>
                          <option value="GTM">Guatemala</option>
                          <option value="GGY">Guernsey</option>
                          <option value="GIN">Guinea</option>
                          <option value="GNB">Guinea-Bissau</option>
                          <option value="GUY">Guyana</option>
                          <option value="HTI">Haiti</option>
                          <option value="HMD">Heard Island and Mcdonald Islands</option>
                          <option value="VAT">Holy See (Vatican City State)</option>
                          <option value="HND">Honduras</option>
                          <option value="HKG">Hong Kong</option>
                          <option value="HUN">Hungary</option>
                          <option value="ISL">Iceland</option>
                          <option value="IND">India</option>
                          <option value="IDN">Indonesia</option>
                          <option value="IRN">Iran</option>
                          <option value="IRQ">Iraq</option>
                          <option value="IRL">Ireland</option>
                          <option value="IMN">Isle of Man</option>
                          <option value="ISR">Israel</option>
                          <option value="ITA">Italy</option>
                          <option value="JAM">Jamaica</option>
                          <option value="JPN">Japan</option>
                          <option value="JEY">Jersey</option>
                          <option value="JOR">Jordan</option>
                          <option value="KAZ">Kazakhstan</option>
                          <option value="KEN">Kenya</option>
                          <option value="KIR">Kiribati</option>
                          <option value="PRK">Korea (North)</option>
                          <option value="KOR">Korea (South)</option>
                          <option value="KWT">Kuwait</option>
                          <option value="KGZ">Kyrgyzstan</option>
                          <option value="LAO">Lao PDR</option>
                          <option value="LVA">Latvia</option>
                          <option value="LBN">Lebanon</option>
                          <option value="LSO">Lesotho</option>
                          <option value="LBR">Liberia</option>
                          <option value="LBY">Libya</option>
                          <option value="LIE">Liechtenstein</option>
                          <option value="LTU">Lithuania</option>
                          <option value="LUX">Luxembourg</option>
                          <option value="MAC">Macao</option>
                          <option value="MKD">Macedonia</option>
                          <option value="MDG">Madagascar</option>
                          <option value="MWI">Malawi</option>
                          <option value="MYS">Malaysia</option>
                          <option value="MDV">Maldives</option>
                          <option value="MLI">Mali</option>
                          <option value="MLT">Malta</option>
                          <option value="MHL">Marshall Islands</option>
                          <option value="MTQ">Martinique</option>
                          <option value="MRT">Mauritania</option>
                          <option value="MUS">Mauritius</option>
                          <option value="MYT">Mayotte</option>
                          <option value="MEX">Mexico</option>
                          <option value="FSM">Micronesia - Federated States</option>
                          <option value="MDA">Moldova</option>
                          <option value="MCO">Monaco</option>
                          <option value="MNG">Mongolia</option>
                          <option value="MNE">Montenegro</option>
                          <option value="MSR">Montserrat</option>
                          <option value="MAR">Morocco</option>
                          <option value="MOZ">Mozambique</option>
                          <option value="MMR">Myanmar</option>
                          <option value="NAM">Namibia</option>
                          <option value="NRU">Nauru</option>
                          <option value="NPL">Nepal</option>
                          <option value="NLD">Netherlands</option>
                          <option value="ANT">Netherlands Antilles</option>
                          <option value="NCL">New Caledonia</option>
                          <option value="NZL">New Zealand</option>
                          <option value="NIC">Nicaragua</option>
                          <option value="NER">Niger</option>
                          <option value="NGA">Nigeria</option>
                          <option value="NIU">Niue</option>
                          <option value="NFK">Norfolk Island</option>
                          <option value="MNP">Northern Mariana Islands</option>
                          <option value="NOR">Norway</option>
                          <option value="OMN">Oman</option>
                          <option value="PAK">Pakistan</option>
                          <option value="PLW">Palau</option>
                          <option value="PSE">Palestinian Territory</option>
                          <option value="PAN">Panama</option>
                          <option value="PNG">Papua New Guinea</option>
                          <option value="PRY">Paraguay</option>
                          <option value="PER">Peru</option>
                          <option value="PHL">Philippines</option>
                          <option value="PCN">Pitcairn</option>
                          <option value="POL">Poland</option>
                          <option value="PRT">Portugal</option>
                          <option value="PRI">Puerto Rico</option>
                          <option value="QAT">Qatar</option>
                          <option value="REU">Réunion</option>
                          <option value="ROU">Romania</option>
                          <option value="RUS">Russian Federation</option>
                          <option value="RWA">Rwanda</option>
                          <option value="SHN">Saint Helena</option>
                          <option value="KNA">Saint Kitts and Nevis</option>
                          <option value="LCA">Saint Lucia</option>
                          <option value="SPM">Saint Pierre and Miquelon</option>
                          <option value="VCT">Saint Vincent and Grenadines</option>
                          <option value="BLM">Saint-Barthélemy</option>
                          <option value="MAF">Saint-Martin (French part)</option>
                          <option value="WSM">Samoa</option>
                          <option value="SMR">San Marino</option>
                          <option value="STP">Sao Tome and Principe</option>
                          <option value="SAU">Saudi Arabia</option>
                          <option value="SEN">Senegal</option>
                          <option value="SRB">Serbia</option>
                          <option value="SYC">Seychelles</option>
                          <option value="SLE">Sierra Leone</option>
                          <option value="SGP">Singapore</option>
                          <option value="SVK">Slovakia</option>
                          <option value="SVN">Slovenia</option>
                          <option value="SLB">Solomon Islands</option>
                          <option value="SOM">Somalia</option>
                          <option value="ZAF">South Africa</option>
                          <option value="SGS">South Georgia and the South Sandwich Islands</option>
                          <option value="ESP">Spain</option>
                          <option value="LKA">Sri Lanka</option>
                          <option value="SDN">Sudan</option>
                          <option value="SUR">Suriname</option>
                          <option value="SJM">Svalbard and Jan Mayen Islands</option>
                          <option value="SWZ">Swaziland</option>
                          <option value="SWE">Sweden</option>
                          <option value="CHE">Switzerland</option>
                          <option value="SYR">Syrian Arab Republic (Syria)</option>
                          <option value="TWN">Taiwan</option>
                          <option value="TJK">Tajikistan</option>
                          <option value="TZA">Tanzania - United Republic of</option>
                          <option value="THA">Thailand</option>
                          <option value="TLS">Timor-Leste</option>
                          <option value="TGO">Togo</option>
                          <option value="TKL">Tokelau</option>
                          <option value="TON">Tonga</option>
                          <option value="TTO">Trinidad and Tobago</option>
                          <option value="TUN">Tunisia</option>
                          <option value="TUR">Turkey</option>
                          <option value="TKM">Turkmenistan</option>
                          <option value="TCA">Turks and Caicos Islands</option>
                          <option value="TUV">Tuvalu</option>
                          <option value="UGA">Uganda</option>
                          <option value="UKR">Ukraine</option>
                          <option value="ARE">United Arab Emirates</option>
                          <option value="GBR">United Kingdom</option>
                          <option value="UMI">United States Minor Outlying Islands</option>
                          <option value="USA">United States of America</option>
                          <option value="URY">Uruguay</option>
                          <option value="UZB">Uzbekistan</option>
                          <option value="VUT">Vanuatu</option>
                          <option value="VNM">Viet Nam</option>
                          <option value="VIR">Virgin Islands (US)</option>
                          <option value="WLF">Wallis and Futuna Islands</option>
                          <option value="ESH">Western Sahara</option>
                          <option value="YEM">Yemen</option>
                          <option value="ZMB">Zambia</option>
                          <option value="ZWE">Zimbabwe</option>
                          </optgroup>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="col4">
                    <div class="form-group">
                      <label for="EmailAddress">Zip code</label>
                      <input class="form-control" data-val="true" placeholder="xxxx" type="text">
                      <span class="field-validation-valid text-danger"></span> </div>
                  </div>
                </div>--%>
                <div class="rowmn">
                  <div class="col12">
                    <div class="form-group form-item form-type-textarea form-item-Description--c">
                      <label for="edit-description-c">Reason for appointment </label>
                      <div class="clearfix"></div>
                      <div class="form-textarea-wrapper">
                        <textarea style="background-color: rgb(238, 238, 238); color: rgb(112, 111, 111);" placeholder="Reason for appointment" title="Reason for appointment" cols="120" rows="5" class="form-textarea" id="txtContent" runat="server"></textarea>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter reason for appointment"
                        ControlToValidate="txtContent" Display="None" ForeColor="Red" ValidationGroup="G40">*</asp:RequiredFieldValidator>
                        <div class="grippie"></div>
                      </div>
                    </div>
                    <div class="form-group ">
                      <asp:Button ID="btnSubmit" runat="server" Text="Submit" onclick="btnSubmit_Click" ValidationGroup="G40"></asp:Button>
                    </div>
                  </div>
                </div>
                <div class="rowmn">
                  <div class="col12">
                    <div class="ggMap"> </div>
                  </div>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ShowMessageBox="True"
                    ShowSummary="False" ValidationGroup="G40" />
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--End Box-->
      <div class="col3 cateNews">
        <uc3:CategoriesRight ID="CategoriesRight1" runat="server" />
        <uc4:NewsRight ID="NewsRight1" runat="server" />
      </div>
    </div>
    <div class="footer wmn"> </div>
  </div>
</asp:Content>
