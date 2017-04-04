<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Xslt_Exercise.aspx.cs" Inherits="Exercise_XML_XSLT.Xslt_Exercise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <title>sample</title>
  <script lang = "javascript" >
     function init()
     {
        var srcDoc = new ActiveXObject("Msxml2.DOMDocument.6.0");
        srcDoc.async=false;
        
        srcDoc.load("XML_Exercise.xml"); 

        var xsltDoc= new ActiveXObject("Msxml2.DOMDocument.6.0");
        xsltDoc.async = false;
       
        xsltDoc.load("XSLT_Exercise.xsl");

        resDoc.innerHTML = srcDoc.transformNode(xsltDoc);
     }
  </script>
</head>

<body onload = "init()" >
   <div id="resDoc"></div>
</body>

</html>
