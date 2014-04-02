<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=Edge;chrome=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Avaya Technology Forum 2014</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Daniel Turriago (daniel@turriago.com) - Avaya Inc. 2013">

    <!-- Le styles -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
      <link href="css/bootstrap-dialog.css" rel="stylesheet" type="text/css" /><%--new--%>
    <link href="assets/css/docs.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="css/messi.css" rel="stylesheet">

       <!--[if IE 8 ]>    <html class="ie8"> <![endif]-->
	<!--[if IE 7 ]>    <html class="ie7"> <![endif]-->

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
                    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
                                   <link rel="shortcut icon" href="assets/ico/favicon.png">
     
}
  </head>

  <body style="visible:none">
    
      <style>
    .navbar .navbar-inner {
      behavior: url(assets/PIE-2/PIE.htc);
    }
  </style>
    
        <!--------- SLIDE PANEL -->
    <div class="panel-derecha">
      <a class="close-panel-derecha">Close <span>X</span></a>
      <nav>
		<a href="index.html">Home</a>
		<a href="newyork/home.html">New York City</a>
		<a href="puertorico/home.html">Puerto Rico</a>
		<a href="toronto/home.html">Toronto</a>
		<a href="mexico/home.html">Mexico</a>
		<a href="atlanta/home.html">Atlanta</a>
		<a href="bogota/home.html">Bogot�</a>
		<a href="saopaulo/home.html">S�o Paulo</a>
		<a href="florence/home.html">Florence, IN</a>
		<a href="seattle/home.html">Seattle</a>
		<a href="boston/home.html">Boston</a>
		<a href="montreal/home.html">Montreal</a>
		<a href="dallas/home.html">Dallas</a>
		<a href="baires/home.html">Buenos Aires</a>
		<a href="stpaul/home.html">St. Paul</a>
		<a href="westirvin/home.html">West Irvin</a>
      </nav>
    </div>
    
    
   <div class="wrapper"><!--------- WRAPPER STICKY FOOTER -->
    
    <div class="push"><!--------- PUSH STICKY FOOTER -->


  <!-- NAVBAR
    ================================================== -->
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="brand" href="http://avaya.com"><img class="desktop" src="assets/img/avaya-logo.jpg" alt="Avaya" /><img class="mobile" src="assets/img/avaya-logo-mobile.jpg" alt="Avaya" /></a>
          <a class="brand nav pull-right" href="index.html"><img src="assets/img/atflogo.png" alt="Avaya" width="218" height="70" class="desktop" /><img class="mobile" src="assets/img/apcd-logo-mobile.png" alt="Avaya" /></a>
        </div>
      </div>
    </div>


<div class="container header-inner">
    <div class="row-fluid">
        <div class="span9">
            <h1 id="titulos">Avaya Technology Forum 2014<br>Networking 101: Get the Basics</h1>
        </div>
        <div class="span3 visible-desktop">
		<ul class="dropdown utility-bar">
		  <li class="share">
		    <ul class="utility-submenu" style="left: -5px;">
		      <li><a href="http://del.icio.us/post?v=4&noui&jump=close&url=http://www.avaya.com/usa/products/#&title=Avaya%20Products%20and%20Telecommunication%20Services%20-%20Avaya" target="_blank"><img src="assets/img/share/delicious.png" />Delicius</a></li>
		      <li><a href="http://www.digg.com/submit/?phase=2&url=http://www.avaya.com/usa/products/#&title=Avaya%20Products%20and%20Telecommunication%20Services%20-%20Avaya&bodytext=Avaya%20products%20and%20telecommunication%20services.%20Find%20the%20software,%20hardware,%20and%20support%20you%20need%20to%20keep%20your%20business%20connected%20and%20effective." target="_blank"><img src="assets/img/share/dig.png" />Dig</a></li>
		      <li><a href="http://www.facebook.com/avaya" target="_blank"><img src="assets/img/share/face.png" />Facebook</a></li>
		      <li><a href="https://plus.google.com/share?url=http://www.avaya.com/usa/products/#" target="_blank"><img src="assets/img/share/google.png" />Google+</a></li>
		      <li><a href="http://www.linkedin.com/company/1494" target="_blank"><img src="assets/img/share/link.png" />LinkedIn</a></li>
		      <li><a href="http://www.newsvine.com/_tools/seed?popoff=0&u=http://www.avaya.com/usa/products/#" target="_blank"><img src="assets/img/share/news.png" />Newsvine</a></li>
		      <li><a href="http://reddit.com/submit?url=http://www.avaya.com/usa/products/#&title=Avaya%20Products%20and%20Telecommunication%20Services%20-%20Avaya" target="_blank"><img src="assets/img/share/reddit.png" />Reddit</a></li>
		      <li><a href="http://twitter.com/avaya" target="_blank"><img src="assets/img/share/twitter.png" />Twitter</a></li>
		    </ul>
		  </li>
		  
		  <li class="follow">
		  <ul class="utility-submenu">
		     <li><a href="http://www.facebook.com/avaya" target="_blank"><img src="assets/img/share/face.png" />Facebook</a></li>
		     <li><a href="https://plus.google.com/share?url=http://www.avaya.com/usa/products/#" target="_blank"><img src="assets/img/share/google.png" />Google+</a> </li>
		     <li><a href="http://www.linkedin.com/company/1494" target="_blank"><img src="assets/img/share/link.png" />LinkedIn</a></li>
		     <li><a href="http://twitter.com/avaya" target="_blank"><img src="assets/img/share/twitter.png" />Twitter</a></li>
		     <li><a href="http://www.youtube.com/avaya" target="_blank"><img src="assets/img/share/you.png" />Youtube</a></li>
		  </ul>  
		  </li>
		  
		  <li class="contact">
		    <ul class="utility-submenu">
		    <li><a href="http://www.avaya.com/usa/how-to-buy/" target="_parent">How to Buy</a></li>
		    <li><a href="http://www.avaya.com/usa/partner-locator/" target="_blank">Find a Partner<img style="padding-left: 5px;" src="assets/img/share/window.png" /></a></li>
		    <li><a href="http://www.avaya.com/usa/partner-locator/" target="_parent">More Contacts </a></li>
		    <li><span class="a" href="#" style=" height: 4px;">1-866-GO-AVAYA</span></li>
		    </ul>
		  </li>
		</ul>
	    </div>
    </div>
    
    
    </div>
        
    



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

    
      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
	
	<div class="row-fluid">
        <div class="span12 visible-phone" style="margin-bottom: 20px;">
	  <img src="assets/img/img-registration-mb.jpg">
        </div>
    </div>

     <div class="row-fluid">
        
        <div class="span6 ">
            
            <div class="form-horizontal">
				<div class="control-group">
					<label class="control-label" type="email" for="inputEmail"><span style="color:#cc0000;">*</span>Email:</label>
					<div class="controls">
					  <input type="text" id="inputEmail" placeholder="Email">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputName"><span style="color:#cc0000;">*</span>First Name:</label>
					<div class="controls">
					  <input type="text" id="inputName" placeholder="First Name">
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputLast"><span style="color:#cc0000;">*</span>Last Name:</label>
					<div class="controls">
					  <input type="text" id="inputLast" placeholder="Last Name">
				</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputCompany"><span style="color:#cc0000;">*</span>Company:</label>
					<div class="controls">
					  <input type="text" id="inputCompany" placeholder="Company">
				</div>
				</div>
                <div class="control-group">
					<label class="control-label" for="inputCompany"><span style="color:#cc0000;">*</span>Street Address:</label>
					<div class="controls">
					  <input type="text" id="address" placeholder="Street Address">
				</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputPhone"><span style="color:#cc0000;">*</span>Phone:</label>
					<div class="controls">
					  <input type="text" id="inputPhone" placeholder="Phone">
				</div>
				</div>
                <div class="control-group">
					<label class="control-label" for="inputCompany"><span style="color:#cc0000;">*</span>City:</label>
					<div class="controls">
					  <input type="text" id="city" placeholder="City">
				</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputJob"><span style="color:#cc0000;">*</span>State:</label>
					<div class="controls">
					  <input type="text" id="state" placeholder="State">
					</div>
				</div>
                <div class="control-group">
					<label class="control-label" for="inputJob"><span style="color:#cc0000;">*</span>Zip:</label>
					<div class="controls">
					  <input type="text" id="zip" placeholder="zip">
					</div>
				</div>
				
				<div class="control-group">
					<label class="control-label" for="inputRelationship"><span style="color:#cc0000;">*</span>What is your relationship with Avaya:</label>
					<div class="controls">
					<select id="inputRelationship">
					  <option value="" selected="selected"></option>
				      <option value="Avaya Employee">Avaya Employee</option>
					  <option value="Partner">Partner</option>
					  <option value="Sponsor" >Sponsor</option>
				    </select>
					</div>
				</div>
            
				<button type="submit" class="btn btn-danger" id="Register">Register Now</button>
                <input type="hidden" name="promocode" id="promocode" value="promocode" />
                <input type="hidden" name="cmp" value="N/A" id="cmp"/>
                <input type="hidden" name="capture_point" value="N/A" id="capture_point"/>
                <input type="hidden" name="idCons" value="0" id="idCons"/>

            </div>
                
        </div>
	
     
     <div class="span6 hidden-phone"><img src="assets/img/img-registration.png" alt="Avaya Partner U"></div>
     
     
     </div>
     
     

     <div class="row-fluid">
      
      <div class="span12 privacy">
	 <small>
	* By providing us with your email address and/or work phone and clicking the button above, you grant Avaya and/or Avaya partners permission to contact you. Your privacy is important to us. Please see the link below to our privacy policy.
	 </small>
      </div>
      
     </div>
     
     <hr>


      <!-- /END THE FEATURETTES -->
      

   </div><!-- /.container -->
    
    </div><!-- /.push sticky footer --> 
    
    </div><!-- /.wrapper --> 
    
            <!-- Footer
    ================================================== -->
     <footer class="footer">
      
      <div class="bs-docs-social social-media">
  <div class="container">
    
    <div class="row visible-desktop">
    <div class="span4 info" style="text-align: left;">
	<img style="float: none; padding-bottom: 8px" src="assets/img/footer/mail.png">
        <a href="mailto:callme@avaya.com">americasbp@avaya.com</a>
    </div>
    
   <div class="span4 visible-desktop" style="text-align: right;">
    <a href="https://www.facebook.com/avaya"><img src="assets/img/social/facebook.png"></a>
    <a href="http://twitter.com/avaya"><img src="assets/img/social/twitter.png"></a>
    <a href="#"><img src="assets/img/social/linkedin.png"></a>
    <a href="http://www.youtube.com/Avayainteractive"><img src="assets/img/social/youtube.png"></a>
    <a href="http://www.flickr.com/photos/avaya"><img src="assets/img/social/flickr.png"></a>
    <a href="http://www.avaya.com/blogs/"><img src="assets/img/social/blog.png"></a>
   </div>
   
    </div>
    
    <div class="row-fluid hidden-desktop">  
      <div class="span6">
	<img style="float: none; padding-bottom: 8px" src="assets/img/footer/mail.png">
        <a href="mailto:callme@avaya.com">americasbp@avaya.com</a>
      </div>
      
      <div class="span6">
	<!--<img style="float: none; padding-bottom: 8px" src="../assets/img/footer/mail.png">-->
       <a class="hashtag" href="https://twitter.com/intent/tweet?button_hashtag=AvayaPCD" class="twitter-hashtag-button" data-related="Avaya">#AvayaPCD</a>
      </div>  
    </div>
    
    <div class="row-fluid hidden-desktop">
      <div class="span12">
	<ul class="bs-docs-social-buttons hidden-desktop">
      <li ><a href="https://www.facebook.com/avaya"><img src="assets/img/social/facebook-mobile.png"></a></li>
      <li><a href="http://twitter.com/avaya"><img src="assets/img/social/twitter-mobile.png"></a></li>
      <li><a href="http://www.linkedin.com/company/1494"><img src="assets/img/social/linkedin-mobile.png"></a></li>
      <li><a href="http://www.youtube.com/Avayainteractive"><img src="assets/img/social/youtube-mobile.png"></a></li>
      <li><a href="http://www.flickr.com/photos/avaya"><img src="assets/img/social/flickr-mobile.png"></a></li>
      <li><a href="http://www.avaya.com/blogs/"><img src="assets/img/social/blog-mobile.png"></a></li>
    </ul>
      </div>
    </div>
    
    
  </div>
</div>
      
      
      <div class="container">
        <div class="row">
            <div class="span12">
              <ul class="footer-links">
              <li><a href="http://www.avaya.com/gcm/master-usa/en-us/includedcontent/termsofuse.htm ">Terms of Use</a></li>
              <li class="muted">&middot;</li>
              <li><a href="http://www.avaya.com/gcm/master-usa/en-us/includedcontent/privacy.htm">Privacy Statement</a></li>
              <li class="muted">&middot;</li>
              <li><a href="http://www.avaya.com/gcm/master-usa/en-us/includedcontent/cookiepolicy.htm">Cookies</a></li>
              <li class="muted">&middot;</li>
              <li class="muted">&copy; 2009-2014 Avaya Inc.</li>
            </ul>
            </div>
            
        </div>	
        
      </div>
    </footer>



    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/jquery.js"></script>
    <script src="js/register.js"></script>
    <script src="js/messi.js"></script>
    <script src="assets/js/bootstrap-transition.js"></script>
    <script src="assets/js/bootstrap-alert.js"></script>
    <script src="assets/js/bootstrap-modal.js"></script>
    <script src="assets/js/bootstrap-dropdown.js"></script>
    <script src="assets/js/bootstrap-scrollspy.js"></script>
    <script src="assets/js/bootstrap-tab.js"></script>
    <script src="assets/js/bootstrap-tooltip.js"></script>
    <script src="assets/js/bootstrap-popover.js"></script>
    <script src="assets/js/bootstrap-button.js"></script>
    <script src="assets/js/bootstrap-collapse.js"></script>
    <script src="assets/js/bootstrap-carousel.js"></script>
    <script src="assets/js/bootstrap-typeahead.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script> <%--new--%>
    <script type="text/javascript" src="js/bootstrap-dialog.js"></script> <%--new--%>
    <script src="assets/js/mystyle.js"></script>


    <script>
      !function ($) {
        $(function(){
          // carousel demo
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="assets/js/holder/holder.js"></script>
    <script src="assets/js/respond.src.js"></script>
    <!--[if lte IE 7]><script src="assets/js/lte-ie7.js"></script><![endif]-->
    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
  </body>
</html>

