<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Action.kt.ftl"
        to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}Action.kt" />
	<instantiate from="root/src/app_package/ActionProcessor.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}ActionProcessor.kt"/>
	<instantiate from="root/src/app_package/Fragment.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}Fragment.kt"/>
	<instantiate from="root/src/app_package/Intent.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}Intent.kt"/>
	<instantiate from="root/src/app_package/Result.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}Result.kt"/>
	<instantiate from="root/src/app_package/ViewModel.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}ViewModel.kt"/>
	<instantiate from="root/src/app_package/ViewState.kt.ftl"
		to="${escapeXmlAttribute(srcOut)}/${feature?lower_case}/${feature}ViewState.kt"/>																to="${escapeXmlAttribute(testOut)}/${feature}PresenterUnitTest.kt"/>

	<open file="${srcOut}/${feature?lower_case}/${feature}Fragment.kt"/>
</recipe>
