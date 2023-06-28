<%@ Page Title="FORM7" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="form7.aspx.cs" Inherits="website.form7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

  
    <script>

        function ddlselect() {
            var d = document.getElementById("cont");
            var displaytext = d.options[d.selectedIndex].value;

            if (displaytext == 0) {
                document.getElementById("sevenone").style.display = "block";
                document.getElementById("seventwo").style.display = "block";
                document.getElementById("seventhree").style.display = "block";
            }
            if (displaytext == "form2") {              
                document.getElementById("21").removeAttribute("disabled");
                document.getElementById("22").disabled = false;
                document.getElementById("23").disabled = false;
                document.getElementById("24").disabled = false;
                document.getElementById("25").disabled = false;
                document.getElementById("26").disabled = false;
                document.getElementById("27").disabled = false;
                document.getElementById("21b").disabled = false;
                document.getElementById("22b").disabled = false;
                document.getElementById("23b").disabled = false;
                document.getElementById("sevenone").style.borderStyle = "solid";
                document.getElementById("sevenone").style.borderColor = "black";
                document.getElementById("seventwo").style.display = "none";
                document.getElementById("seventhree").style.display = "none";
                document.getElementById("sevenone").style.display = "block";
            }
            else {
                document.getElementById("21").setAttribute("disabled", true);
                document.getElementById("21").value = "";
                document.getElementById("22").setAttribute("disabled", true);
                document.getElementById("22").value = "";
                document.getElementById("23").setAttribute("disabled", true);
                document.getElementById("23").value = "";
                document.getElementById("24").setAttribute("disabled", true);
                document.getElementById("24").value = "";
                document.getElementById("25").setAttribute("disabled", true);
                document.getElementById("25").value = "";
                document.getElementById("26").setAttribute("disabled", true);
                document.getElementById("26").value = "";
                document.getElementById("27").setAttribute("disabled", true);
                document.getElementById("27").value = "";
                document.getElementById("21b").setAttribute("disabled", true);
                document.getElementById("22b").setAttribute("disabled", true);
                document.getElementById("23b").setAttribute("disabled", true);
                document.getElementById("sevenone").style.borderStyle = "none";
                document.getElementById("sevenone").style.borderColor = "none";

            }
            if (displaytext == "form3") {
                document.getElementById("31").disabled = false;
                document.getElementById("32").disabled = false;
                document.getElementById("33").disabled = false;
                document.getElementById("34").disabled = false;
                document.getElementById("35").disabled = false;
                document.getElementById("36").disabled = false;
                document.getElementById("37").disabled = false;
                document.getElementById("31b").disabled = false;
                document.getElementById("32b").disabled = false;
                document.getElementById("33b").disabled = false;
                document.getElementById("seventwo").style.borderStyle = "solid";
                document.getElementById("seventwo").style.borderColor = "black";
                document.getElementById("sevenone").style.display = "none";
                document.getElementById("seventhree").style.display = "none";
                document.getElementById("seventwo").style.display = "block";
            }
            else {
                document.getElementById("31").setAttribute("disabled", true);
                document.getElementById("31").value = "";
                document.getElementById("32").setAttribute("disabled", true);
                document.getElementById("32").value = "";
                document.getElementById("33").setAttribute("disabled", true);
                document.getElementById("33").value = "";
                document.getElementById("34").setAttribute("disabled", true);
                document.getElementById("34").value = "";
                document.getElementById("35").setAttribute("disabled", true);
                document.getElementById("35").value = "";
                document.getElementById("36").setAttribute("disabled", true);
                document.getElementById("36").value = "";
                document.getElementById("37").setAttribute("disabled", true);
                document.getElementById("37").value = "";
                document.getElementById("31b").setAttribute("disabled", true);
                document.getElementById("32b").setAttribute("disabled", true);
                document.getElementById("33b").setAttribute("disabled", true);
                document.getElementById("seventwo").style.borderStyle = "none";
                document.getElementById("seventwo").style.borderColor = "none";
            }
            if (displaytext == "form4") {
                document.getElementById("41").disabled = false;
                document.getElementById("42").disabled = false;
                document.getElementById("43").disabled = false;
                document.getElementById("44").disabled = false;
                document.getElementById("45").disabled = false;
                document.getElementById("46").disabled = false;
                document.getElementById("41b").disabled = false;
                document.getElementById("42b").disabled = false;
                document.getElementById("43b").disabled = false;
                document.getElementById("seventhree").style.borderStyle = "solid";
                document.getElementById("seventhree").style.borderColor = "black";
                document.getElementById("sevenone").style.display = "none";
                document.getElementById("seventwo").style.display = "none";
                document.getElementById("seventhree").style.display = "block";
            }
            else {
                document.getElementById("41").setAttribute("disabled", true);
                document.getElementById("41").value = "";
                document.getElementById("42").setAttribute("disabled", true);
                document.getElementById("42").value = "";
                document.getElementById("43").setAttribute("disabled", true);
                document.getElementById("43").value = "";
                document.getElementById("44").setAttribute("disabled", true);
                document.getElementById("44").value = "";
                document.getElementById("45").setAttribute("disabled", true);
                document.getElementById("45").value = "";
                document.getElementById("46").setAttribute("disabled", true);
                document.getElementById("46").value = "";
                document.getElementById("41b").setAttribute("disabled", true);
                document.getElementById("42b").setAttribute("disabled", true);
                document.getElementById("43b").setAttribute("disabled", true);
                document.getElementById("seventhree").style.borderStyle = "none";
                document.getElementById("seventhree").style.borderColor = "none";
            }
        }

    </script>
    <style>
input[type=text]{
    border:2px solid #aaa;
    border-radius:4px;
    margin:8px 0;
    outline:none;
    padding:8px;
    box-sizing:border-box;
    transition:.3s;
}
input[type=text]:focus{
    border-color:rgb(153,0,255);
    box-shadow:0 0 8px 0 rgb(153,0,255);
}
      
    .cost{
        width:100%;
        //height:100vh;
        justify-content:center;
        align-items:flex-start;
        padding:5rem;
    }
    .dropdown{
        width:100%;
        position:relative;
        padding-left:10%;
        padding-right:10%;
        padding-bottom:10%;
        font-size:10px;
    }

    .dropdown-select {
        padding: 0.5rem;
        border-radius: 4px;
        background-color: white;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
        font-size: 1rem;
        cursor: pointer;
        
    }

    .buttons {
    margin: 5%;
    text-align: center;
}

.btn-hover {
    width: 200px;
    font-size: 16px;
    font-weight: 600;
    color: #fff;
    cursor: pointer;
    margin: 20px;
    height: 55px;
    text-align:center;
    border: none;
    background-size: 300% 100%;
    border-radius: 50px;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:hover {
    background-position: 100% 0;
    -o-transition: all .4s ease-in-out;
    -webkit-transition: all .4s ease-in-out;
    transition: all .4s ease-in-out;
}

.btn-hover:focus {
    outline: none;
}
.btn-hover.color-1 {
    background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}
.btn-hover.color-2 {
    background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
    box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}
.btn-hover.color-10 {
        background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a , #FBB03B);
    box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
}








p label {
display: inline-block;
width: 40%;
font-size:18px;
}
p input {
width: 100%;
font-size: 16px;
}

.tt{
    padding-left:5px;
    padding-right:5px;
}

        </style>
    <div class="cost">
        <div class="dropdown">
        <select id="cont" onchange="ddlselect() ; " class="dropdown-select">

    <option value="0">choose an option</option>
    <option  value="form2">3.7.1</option>
    <option  value="form3">3.7.2</option>
     <option  value="form4">3.7.3</option>
       

</select>
           <div class="col-md-6">
            
           </div>

       </div>
     
        <div class="sevenone" id="sevenone"  >
     <div class="tt">     <hr />  <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label class="def">NUMBER OF COLLABORATIVE ACTIVITIES FOR  RESEARCH, FACULTY EXCHANGE, STUDENT EXCHANGE PER YEAR  </label></div>
           <p> <label >Title of the collaborative activity </label>
            <input type="text"   size="12" disabled id="21"/></p>
              <p> <label >Name of the collaborating agency with contact details </label>
            <input type="text"    size="12" disabled id="22"/></p>
             <p> <label >Name of the participant </label>
            <input type="text"   size="12" disabled id="23"/></p>
             <p> <label >Source of financial support </label>
            <input type="text"    size="12" disabled id="24"/></p>
           <p> <label >Year of collaboration  </label>
            <input type="text"    size="12" disabled id="25"/></p>
           <p> <label >Duration  </label>
            <input type="text"    size="12" disabled id="26"/></p>
           <p> <label >Nature of the activity  </label>
            <input type="text"    size="12" disabled id="27"/></p>
           
             <div class="buttons">
        <input class="SubmitButton btn-hover color-1" id="21b" type="button" value="Save" disabled  style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" id="22b" type="button" value="Update"   disabled    style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" id="23b" type="button" value="Delete"  disabled    style="font-size:20px; " />


    
</div>
    </div>
          


        </div>

  
        <div class="seventwo" id="seventwo">
    <div class="tt">           <hr />     <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label>NUMBER OF LINKAGES WITH INSTITUTIONS/INDUSTRIES FOR INTERNSHIP, ON-THE-JOB TRAINING, PROJECT WORK, SHARING OF RESEARCH FACILITIES ETC. DURING THE LAST FIVE YEARS </label></div>
           <p> <label >Title of the linkage </label>
            <input type="text"   size="12"  disabled id="31"/></p>
              <p> <label >Name of the partnering institution/ industry /research lab with contact details </label>
            <input type="text"   size="12" disabled id="32"/></p>
             <p> <label >Year of activity</label>
            <input type="text"   size="12" disabled id="33" /></p>
             <p> <label >Year of commencement </label>
            <input type="text"   size="12"  disabled id="34" /></p>
            <p> <label >Duration  </label>
            <input type="text" "   size="12"  disabled id="35" /></p>
         <p> <label >Nature of linkage   </label>
            <input type="text" "   size="12"  disabled id="36" /></p>
         <p> <label >Name of the participant   </label>
            <input type="text" "   size="12"  disabled id="37" /></p>
          <div class="buttons">
        <input class="SubmitButton btn-hover color-1" type="button" value="Save"  id="31b" disabled    style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" type="button" value="Update"  id="32b" disabled   style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" type="button" value="Delete" disabled   id="33b"  style="font-size:20px; " />


    
</div>
    </div>


        </div>


 
        <div class="seventhree" id="seventhree">
       <div class="tt">        <hr />       <div class="text-center" style="font-size:22px;color:rgb(255, 165, 0);font-weight:bold"><label>NUMBER OF FUNCTIONAL MOUS WITH INSTITUTIONS OF NATIONAL, INTERNATIONAL IMPORTANCE, OTHER UNIVERSITIES, INDUSTRIES, CORPORATE HOUSES ETC. DURING THE LAST FIVE YEARS (ONLY FUNCTIONAL MOUS WITH ONGOING ACTIVITIES TO BE CONSIDERED)  </label></div>
           <p> <label >Organisation with which MoU is signed </label>
            <input type="text"  size="12" disabled id="41" /></p>
              <p> <label >OName of the institution/ industry/ corporate house</label>
            <input type="text"  size="12"  disabled id="42"/></p>
             <p> <label >Year of signing MoU </label>
            <input type="text"   size="12" disabled id="43" /></p>
             <p> <label >Duration </label>
            <input type="text"    size="12" disabled id="44" /></p>
           <p> <label >List the  actual  activities under each MoU year wise</label>
            <input type="text"    size="12" disabled id="45" /></p>
            <p> <label >Number of students/teachers participated under MoUs</label>
            <input type="text"    size="12" disabled id="46" /></p>
          <div class="buttons">
        <input class="SubmitButton btn-hover color-1" type="button" disabled id="41b" value="Save"   style="font-size:20px; " />
 
        <input class="SubmitButton btn-hover color-2" type="button" disabled id="42b" value="Update" style="font-size:20px; " />
      
        <input class="SubmitButton btn-hover color-10" type="button" disabled  id="43b" value="Delete"  style="font-size:20px; " />


    </div>

    </div>


        </div>



    </div>
   
 

</asp:Content>
