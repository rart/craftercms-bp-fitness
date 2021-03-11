<#import "/templates/system/common/ice.ftl" as studio />

 
<#if contentModel.imageBackground_s?? && contentModel.imageBackground_s != "">
	<section id="price" class="catalog-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed">
<#else>
	<section id="class" class="catalog-section parallax-section">
</#if>
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12 text-center">
				<@studio.h2 $field="titleText_t" style="color:${contentModel.titleColor_s}">
					${contentModel.titleText_t}
				</@studio.h2>
				<@studio.p $field="description_t">
					${contentModel.description_t}
				</@studio.p>
			</div>
			<#if contentModel.items_o?? && contentModel.items_o.item??>
					<#list contentModel.items_o.item as class>
							<@renderComponent component=class />
					</#list>
			</#if>
		</div>
	</div>
</section>