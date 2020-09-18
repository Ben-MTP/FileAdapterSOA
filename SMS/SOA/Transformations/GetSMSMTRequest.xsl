<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
                xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator"
                xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas"
                xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue"
                xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction"
                xmlns:ns0="http://vasplatform.mobifone.vn" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java"
                xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
                xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions"
                exclude-result-prefixes="oracle-xsl-mapper xsi xsd xsl ns0 socket dvm mhdr oraxsl oraext xp20 xref"
                xmlns:plnk="http://docs.oasis-open.org/wsbpel/2.0/plnktype"
                xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/"
                xmlns:tns="http://xmlns.oracle.com/VASTemplate/SMS/GW.SMS"
                xmlns:client="http://xmlns.oracle.com/VASTemplate/BPELTemplate/process">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/process.wsdl"/>
        <oracle-xsl-mapper:rootElement name="pool" namespace="http://vasplatform.mobifone.vn"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/process.wsdl"/>
        <oracle-xsl-mapper:rootElement name="rq" namespace="http://vasplatform.mobifone.vn"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.2.1.3.0(XSLT Build 170820.1700.2557) AT [TUE JUL 21 18:04:24 ICT 2020].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <ns0:rq>
      <ns0:ps>
        <ns0:p>
          <ns0:k>CACHE_NAME</ns0:k>
          <ns0:v>
            <xsl:value-of select="/ns0:pool/ns0:ps[@i = 1]/ns0:p[ns0:k = 'MTKEY']/ns0:v"/>
          </ns0:v>
        </ns0:p>
        <ns0:p>
          <ns0:k>SESSION</ns0:k>
          <ns0:v>
            <xsl:value-of select="/ns0:pool/ns0:ps[@i = 1]/ns0:p[ns0:k = 'SESSION']/ns0:v"/>
          </ns0:v>
        </ns0:p>
      </ns0:ps>
    </ns0:rq>
  </xsl:template>
</xsl:stylesheet>