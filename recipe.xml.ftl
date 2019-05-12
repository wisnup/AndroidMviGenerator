<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Action.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}Action.kt" />
	<instantiate from="root/src/app_package/ActionProcessor.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}ActionProcessor.kt"/>
	<instantiate from="root/src/app_package/Fragment.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}Fragment.kt"/>
	<instantiate from="root/src/app_package/Intent.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}Intent.kt"/>
	<instantiate from="root/src/app_package/Result.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}Result.kt"/>
	<instantiate from="root/src/app_package/ViewModel.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}ViewModel.kt"/>
	<instantiate from="root/src/app_package/ViewState.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature}/${feature}ViewState.kt"/>																to="${escapeXmlAttribute(testOut)}/${feature}PresenterUnitTest.kt"/>

	<open file="${srcOut}/${feature}/${feature}Fragment.kt"/>
</recipe>
