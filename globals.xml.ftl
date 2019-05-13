<?xml version="1.0"?>
<globals>
 <global id="resOut" value="${resDir}" />
 <global id="srcOut" value="${srcDir}/${slashedPackageName(packageName)}" />

 <global id="mainSrcOut" value="${srcOut?replace('debug|staging|systest', '', 'r')}" />
 <global id="mainUnitTestOut" value="${escapeXmlAttribute(projectOut)}/src/test/java/${slashedPackageName(packageName)?replace('debug|staging|systest', '', 'r')}" />
</globals>
