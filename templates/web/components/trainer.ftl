<#import "/templates/system/common/crafter.ftl" as crafter />

<@crafter.section id="trainer" class="parallax-section">
	<div class="container">
		<div class="row">

			<div class="wow fadeInUp col-md-12 col-sm-12" data-wow-delay="1.3s">
				<@crafter.h2 $field="titleText_t:" />
				<@crafter.p $field="description_t:" />
			</div>

			<@crafter.renderComponentCollection
				$field="trainerList_o"
        $containerAttributes={
					"class": "components-container col-md-12 col-sm-12"
				}
        $itemAttributes={
					"class": "wow fadeInUp col-md-4 col-sm-6",
					"data-wow-delay": "2.3s"
				}
			/>

		</div>
	</div>
</@crafter.section>
