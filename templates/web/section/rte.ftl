<#import "/templates/system/common/crafter.ftl" as crafter />
<!-- =========================
    VENUE SECTION
============================== -->

<@crafter.section id=model['internal-name'] class="parallax-section rte-section" $attributes={'style': 'background: url(' + model.bgImage_s!"" + ') 50% 0 repeat-y fixed;'}>
  <div class="container">
    <div class="row">
      <@crafter.div $field="body_html" class="wow fadeInLeft col-md-offset-1 col-md-5 col-sm-8" $attributes={'data-wow-delay': '0.9s'}>
        ${model.body_html!''}
      </@crafter.div>
    </div>
  </div>
</@crafter.section>