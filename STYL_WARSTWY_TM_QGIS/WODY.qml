<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.10.3-A Coruña" simplifyDrawingHints="1" maxScale="0" labelsEnabled="0" simplifyLocal="1" minScale="1e+08" simplifyAlgorithm="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" attr="KOD10K" enableorderby="0" type="categorizedSymbol" symbollevels="0">
    <categories>
      <category value="0010_601" label="woda powierzchniowa" symbol="0" render="true"/>
      <category value="0010_604" label="linia brzegowa" symbol="1" render="true"/>
      <category value="0010_605" label="linia brzegowa nieokreślona" symbol="2" render="true"/>
    </categories>
    <symbols>
      <symbol name="0" force_rhr="0" type="fill" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="210,239,250,255" k="color"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="83,174,221,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="3" k="outline_width"/>
          <prop v="MapUnit" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" type="fill" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="255,255,255,255" k="color"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="83,174,221,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="3" k="outline_width"/>
          <prop v="MapUnit" k="outline_width_unit"/>
          <prop v="no" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" type="fill" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="40;10" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="83,174,221,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="3" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol name="0" force_rhr="0" type="fill" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleFill" enabled="1">
          <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
          <prop v="166,206,227,255" k="color"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="7,97,255,255" k="outline_color"/>
          <prop v="solid" k="outline_style"/>
          <prop v="0.26" k="outline_width"/>
          <prop v="MM" k="outline_width_unit"/>
          <prop v="solid" k="style"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </source-symbol>
    <rotation/>
    <sizescale/>
    <effect type="effectStack" enabled="0">
      <effect type="dropShadow">
        <prop v="13" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,0,255" k="color"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="135" k="offset_angle"/>
        <prop v="2" k="offset_distance"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
        <prop v="1" k="opacity"/>
      </effect>
      <effect type="outerGlow">
        <prop v="0" k="blend_mode"/>
        <prop v="0" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,255,255" k="color1"/>
        <prop v="0,255,0,255" k="color2"/>
        <prop v="0" k="color_type"/>
        <prop v="0" k="discrete"/>
        <prop v="2" k="draw_mode"/>
        <prop v="1" k="enabled"/>
        <prop v="0.269" k="opacity"/>
        <prop v="gradient" k="rampType"/>
        <prop v="255,255,255,255" k="single_color"/>
        <prop v="1" k="spread"/>
        <prop v="MapUnit" k="spread_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
      </effect>
      <effect type="drawSource">
        <prop v="14" k="blend_mode"/>
        <prop v="1" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="0.377" k="opacity"/>
      </effect>
      <effect type="innerShadow">
        <prop v="13" k="blend_mode"/>
        <prop v="2.645" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,0,255" k="color"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="135" k="offset_angle"/>
        <prop v="2" k="offset_distance"/>
        <prop v="MM" k="offset_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="offset_unit_scale"/>
        <prop v="1" k="opacity"/>
      </effect>
      <effect type="innerGlow">
        <prop v="0" k="blend_mode"/>
        <prop v="0.7935" k="blur_level"/>
        <prop v="MM" k="blur_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="blur_unit_scale"/>
        <prop v="0,0,255,255" k="color1"/>
        <prop v="0,255,0,255" k="color2"/>
        <prop v="0" k="color_type"/>
        <prop v="0" k="discrete"/>
        <prop v="2" k="draw_mode"/>
        <prop v="0" k="enabled"/>
        <prop v="0.5" k="opacity"/>
        <prop v="gradient" k="rampType"/>
        <prop v="255,255,255,255" k="single_color"/>
        <prop v="2" k="spread"/>
        <prop v="MM" k="spread_unit"/>
        <prop v="3x:0,0,0,0,0,0" k="spread_unit_scale"/>
      </effect>
    </effect>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>1</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" minimumSize="0" backgroundAlpha="255" penAlpha="255" penColor="#000000" rotationOffset="270" opacity="1" minScaleDenominator="0" diagramOrientation="Up" width="15" height="15" lineSizeType="MM" barWidth="5" maxScaleDenominator="1e+08" enabled="0" penWidth="0" labelPlacementMethod="XHeight" scaleDependency="Area" backgroundColor="#ffffff" sizeType="MM">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" placement="1" showAll="1" dist="0" linePlacementFlags="18" priority="0" obstacle="0">
    <properties>
      <Option type="Map">
        <Option value="" name="name" type="QString"/>
        <Option name="properties"/>
        <Option value="collection" name="type" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions geometryPrecision="0" removeDuplicateNodes="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option name="QgsGeometryGapCheck" type="Map">
        <Option value="0" name="allowedGapsBuffer" type="double"/>
        <Option value="false" name="allowedGapsEnabled" type="bool"/>
        <Option value="" name="allowedGapsLayer" type="QString"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <fieldConfiguration>
    <field name="gml_id">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="lokalnyId">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="przestrzen">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="wersjaId">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="czyObiektB">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kod">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_skrKarto">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_katDoklG">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_zrodloDa">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_zrodlo_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_katIstni">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_rodzajRe">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_aktualno">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_aktual_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="poczatekWe">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="koniecWers">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_dataUtwo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKarto">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_3">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_4">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_5">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_kodKar_6">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rodzaj">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="katIstnien">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="poziomWody">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_informDo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="idMPHP">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ciek2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zbiornikWo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PL.PZGiK.2">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PL.PZGiK_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ciek2_tmp">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="zbiornik_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="KOD10K">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ZB_NAZWA">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias index="0" name="" field="gml_id"/>
    <alias index="1" name="" field="lokalnyId"/>
    <alias index="2" name="" field="przestrzen"/>
    <alias index="3" name="" field="wersjaId"/>
    <alias index="4" name="" field="czyObiektB"/>
    <alias index="5" name="" field="x_kod"/>
    <alias index="6" name="" field="x_skrKarto"/>
    <alias index="7" name="" field="x_katDoklG"/>
    <alias index="8" name="" field="x_zrodloDa"/>
    <alias index="9" name="" field="x_zrodlo_1"/>
    <alias index="10" name="" field="x_katIstni"/>
    <alias index="11" name="" field="x_rodzajRe"/>
    <alias index="12" name="" field="x_aktualno"/>
    <alias index="13" name="" field="x_aktual_1"/>
    <alias index="14" name="" field="poczatekWe"/>
    <alias index="15" name="" field="koniecWers"/>
    <alias index="16" name="" field="x_dataUtwo"/>
    <alias index="17" name="" field="x_kodKarto"/>
    <alias index="18" name="" field="x_kodKar_1"/>
    <alias index="19" name="" field="x_kodKar_2"/>
    <alias index="20" name="" field="x_kodKar_3"/>
    <alias index="21" name="" field="x_kodKar_4"/>
    <alias index="22" name="" field="x_kodKar_5"/>
    <alias index="23" name="" field="x_kodKar_6"/>
    <alias index="24" name="" field="rodzaj"/>
    <alias index="25" name="" field="katIstnien"/>
    <alias index="26" name="" field="poziomWody"/>
    <alias index="27" name="" field="x_informDo"/>
    <alias index="28" name="" field="idMPHP"/>
    <alias index="29" name="" field="ciek2"/>
    <alias index="30" name="" field="zbiornikWo"/>
    <alias index="31" name="" field="PL.PZGiK.2"/>
    <alias index="32" name="" field="PL.PZGiK_1"/>
    <alias index="33" name="" field="ciek2_tmp"/>
    <alias index="34" name="" field="zbiornik_1"/>
    <alias index="35" name="" field="KOD10K"/>
    <alias index="36" name="" field="ZB_NAZWA"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="gml_id" expression="" applyOnUpdate="0"/>
    <default field="lokalnyId" expression="" applyOnUpdate="0"/>
    <default field="przestrzen" expression="" applyOnUpdate="0"/>
    <default field="wersjaId" expression="" applyOnUpdate="0"/>
    <default field="czyObiektB" expression="" applyOnUpdate="0"/>
    <default field="x_kod" expression="" applyOnUpdate="0"/>
    <default field="x_skrKarto" expression="" applyOnUpdate="0"/>
    <default field="x_katDoklG" expression="" applyOnUpdate="0"/>
    <default field="x_zrodloDa" expression="" applyOnUpdate="0"/>
    <default field="x_zrodlo_1" expression="" applyOnUpdate="0"/>
    <default field="x_katIstni" expression="" applyOnUpdate="0"/>
    <default field="x_rodzajRe" expression="" applyOnUpdate="0"/>
    <default field="x_aktualno" expression="" applyOnUpdate="0"/>
    <default field="x_aktual_1" expression="" applyOnUpdate="0"/>
    <default field="poczatekWe" expression="" applyOnUpdate="0"/>
    <default field="koniecWers" expression="" applyOnUpdate="0"/>
    <default field="x_dataUtwo" expression="" applyOnUpdate="0"/>
    <default field="x_kodKarto" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_1" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_2" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_3" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_4" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_5" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_6" expression="" applyOnUpdate="0"/>
    <default field="rodzaj" expression="" applyOnUpdate="0"/>
    <default field="katIstnien" expression="" applyOnUpdate="0"/>
    <default field="poziomWody" expression="" applyOnUpdate="0"/>
    <default field="x_informDo" expression="" applyOnUpdate="0"/>
    <default field="idMPHP" expression="" applyOnUpdate="0"/>
    <default field="ciek2" expression="" applyOnUpdate="0"/>
    <default field="zbiornikWo" expression="" applyOnUpdate="0"/>
    <default field="PL.PZGiK.2" expression="" applyOnUpdate="0"/>
    <default field="PL.PZGiK_1" expression="" applyOnUpdate="0"/>
    <default field="ciek2_tmp" expression="" applyOnUpdate="0"/>
    <default field="zbiornik_1" expression="" applyOnUpdate="0"/>
    <default field="KOD10K" expression="" applyOnUpdate="0"/>
    <default field="ZB_NAZWA" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint unique_strength="0" exp_strength="0" field="gml_id" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="lokalnyId" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="przestrzen" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="wersjaId" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="czyObiektB" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kod" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_skrKarto" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_katDoklG" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_zrodloDa" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_zrodlo_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_katIstni" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_rodzajRe" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_aktualno" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_aktual_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="poczatekWe" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="koniecWers" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_dataUtwo" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKarto" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_2" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_3" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_4" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_5" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_6" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="rodzaj" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="katIstnien" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="poziomWody" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_informDo" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="idMPHP" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="ciek2" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="zbiornikWo" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="PL.PZGiK.2" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="PL.PZGiK_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="ciek2_tmp" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="zbiornik_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="KOD10K" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="ZB_NAZWA" notnull_strength="0" constraints="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="gml_id" exp="" desc=""/>
    <constraint field="lokalnyId" exp="" desc=""/>
    <constraint field="przestrzen" exp="" desc=""/>
    <constraint field="wersjaId" exp="" desc=""/>
    <constraint field="czyObiektB" exp="" desc=""/>
    <constraint field="x_kod" exp="" desc=""/>
    <constraint field="x_skrKarto" exp="" desc=""/>
    <constraint field="x_katDoklG" exp="" desc=""/>
    <constraint field="x_zrodloDa" exp="" desc=""/>
    <constraint field="x_zrodlo_1" exp="" desc=""/>
    <constraint field="x_katIstni" exp="" desc=""/>
    <constraint field="x_rodzajRe" exp="" desc=""/>
    <constraint field="x_aktualno" exp="" desc=""/>
    <constraint field="x_aktual_1" exp="" desc=""/>
    <constraint field="poczatekWe" exp="" desc=""/>
    <constraint field="koniecWers" exp="" desc=""/>
    <constraint field="x_dataUtwo" exp="" desc=""/>
    <constraint field="x_kodKarto" exp="" desc=""/>
    <constraint field="x_kodKar_1" exp="" desc=""/>
    <constraint field="x_kodKar_2" exp="" desc=""/>
    <constraint field="x_kodKar_3" exp="" desc=""/>
    <constraint field="x_kodKar_4" exp="" desc=""/>
    <constraint field="x_kodKar_5" exp="" desc=""/>
    <constraint field="x_kodKar_6" exp="" desc=""/>
    <constraint field="rodzaj" exp="" desc=""/>
    <constraint field="katIstnien" exp="" desc=""/>
    <constraint field="poziomWody" exp="" desc=""/>
    <constraint field="x_informDo" exp="" desc=""/>
    <constraint field="idMPHP" exp="" desc=""/>
    <constraint field="ciek2" exp="" desc=""/>
    <constraint field="zbiornikWo" exp="" desc=""/>
    <constraint field="PL.PZGiK.2" exp="" desc=""/>
    <constraint field="PL.PZGiK_1" exp="" desc=""/>
    <constraint field="ciek2_tmp" exp="" desc=""/>
    <constraint field="zbiornik_1" exp="" desc=""/>
    <constraint field="KOD10K" exp="" desc=""/>
    <constraint field="ZB_NAZWA" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortExpression="" sortOrder="0" actionWidgetStyle="dropDown">
    <columns>
      <column name="gml_id" width="-1" type="field" hidden="0"/>
      <column name="lokalnyId" width="-1" type="field" hidden="0"/>
      <column name="przestrzen" width="-1" type="field" hidden="0"/>
      <column name="wersjaId" width="-1" type="field" hidden="0"/>
      <column name="czyObiektB" width="-1" type="field" hidden="0"/>
      <column name="x_kod" width="-1" type="field" hidden="0"/>
      <column name="x_skrKarto" width="-1" type="field" hidden="0"/>
      <column name="x_katDoklG" width="-1" type="field" hidden="0"/>
      <column name="x_zrodloDa" width="-1" type="field" hidden="0"/>
      <column name="x_zrodlo_1" width="-1" type="field" hidden="0"/>
      <column name="x_katIstni" width="-1" type="field" hidden="0"/>
      <column name="x_rodzajRe" width="-1" type="field" hidden="0"/>
      <column name="x_aktualno" width="-1" type="field" hidden="0"/>
      <column name="x_aktual_1" width="-1" type="field" hidden="0"/>
      <column name="poczatekWe" width="-1" type="field" hidden="0"/>
      <column name="koniecWers" width="-1" type="field" hidden="0"/>
      <column name="x_dataUtwo" width="-1" type="field" hidden="0"/>
      <column name="x_kodKarto" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_1" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_2" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_3" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_4" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_5" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_6" width="-1" type="field" hidden="0"/>
      <column name="rodzaj" width="-1" type="field" hidden="0"/>
      <column name="katIstnien" width="-1" type="field" hidden="0"/>
      <column name="poziomWody" width="-1" type="field" hidden="0"/>
      <column name="x_informDo" width="-1" type="field" hidden="0"/>
      <column name="idMPHP" width="-1" type="field" hidden="0"/>
      <column name="ciek2" width="-1" type="field" hidden="0"/>
      <column name="zbiornikWo" width="-1" type="field" hidden="0"/>
      <column name="PL.PZGiK.2" width="-1" type="field" hidden="0"/>
      <column name="PL.PZGiK_1" width="-1" type="field" hidden="0"/>
      <column name="ciek2_tmp" width="-1" type="field" hidden="0"/>
      <column name="zbiornik_1" width="-1" type="field" hidden="0"/>
      <column name="KOD10K" width="-1" type="field" hidden="0"/>
      <column name="ZB_NAZWA" width="-1" type="field" hidden="0"/>
      <column width="-1" type="actions" hidden="1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Formularze QGIS mogą zawierać funkcje Pythona, które będą wywołane przy otwieraniu
 formularza.

Można z nich skorzystać, aby rozbudować formularz.

Wpisz nazwę funkcji w polu
"Python Init function".
Przykład:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="KOD10K"/>
    <field editable="1" name="PL.PZGiK.2"/>
    <field editable="1" name="PL.PZGiK_1"/>
    <field editable="1" name="ZB_NAZWA"/>
    <field editable="1" name="ciek2"/>
    <field editable="1" name="ciek2_tmp"/>
    <field editable="1" name="czyObiektB"/>
    <field editable="1" name="gml_id"/>
    <field editable="1" name="idMPHP"/>
    <field editable="1" name="katIstnien"/>
    <field editable="1" name="koniecWers"/>
    <field editable="1" name="lokalnyId"/>
    <field editable="1" name="poczatekWe"/>
    <field editable="1" name="poziomWody"/>
    <field editable="1" name="przestrzen"/>
    <field editable="1" name="rodzaj"/>
    <field editable="1" name="wersjaId"/>
    <field editable="1" name="x_aktual_1"/>
    <field editable="1" name="x_aktualno"/>
    <field editable="1" name="x_dataUtwo"/>
    <field editable="1" name="x_informDo"/>
    <field editable="1" name="x_katDoklG"/>
    <field editable="1" name="x_katIstni"/>
    <field editable="1" name="x_kod"/>
    <field editable="1" name="x_kodKar_1"/>
    <field editable="1" name="x_kodKar_2"/>
    <field editable="1" name="x_kodKar_3"/>
    <field editable="1" name="x_kodKar_4"/>
    <field editable="1" name="x_kodKar_5"/>
    <field editable="1" name="x_kodKar_6"/>
    <field editable="1" name="x_kodKarto"/>
    <field editable="1" name="x_rodzajRe"/>
    <field editable="1" name="x_skrKarto"/>
    <field editable="1" name="x_zrodloDa"/>
    <field editable="1" name="x_zrodlo_1"/>
    <field editable="1" name="zbiornikWo"/>
    <field editable="1" name="zbiornik_1"/>
  </editable>
  <labelOnTop>
    <field name="KOD10K" labelOnTop="0"/>
    <field name="PL.PZGiK.2" labelOnTop="0"/>
    <field name="PL.PZGiK_1" labelOnTop="0"/>
    <field name="ZB_NAZWA" labelOnTop="0"/>
    <field name="ciek2" labelOnTop="0"/>
    <field name="ciek2_tmp" labelOnTop="0"/>
    <field name="czyObiektB" labelOnTop="0"/>
    <field name="gml_id" labelOnTop="0"/>
    <field name="idMPHP" labelOnTop="0"/>
    <field name="katIstnien" labelOnTop="0"/>
    <field name="koniecWers" labelOnTop="0"/>
    <field name="lokalnyId" labelOnTop="0"/>
    <field name="poczatekWe" labelOnTop="0"/>
    <field name="poziomWody" labelOnTop="0"/>
    <field name="przestrzen" labelOnTop="0"/>
    <field name="rodzaj" labelOnTop="0"/>
    <field name="wersjaId" labelOnTop="0"/>
    <field name="x_aktual_1" labelOnTop="0"/>
    <field name="x_aktualno" labelOnTop="0"/>
    <field name="x_dataUtwo" labelOnTop="0"/>
    <field name="x_informDo" labelOnTop="0"/>
    <field name="x_katDoklG" labelOnTop="0"/>
    <field name="x_katIstni" labelOnTop="0"/>
    <field name="x_kod" labelOnTop="0"/>
    <field name="x_kodKar_1" labelOnTop="0"/>
    <field name="x_kodKar_2" labelOnTop="0"/>
    <field name="x_kodKar_3" labelOnTop="0"/>
    <field name="x_kodKar_4" labelOnTop="0"/>
    <field name="x_kodKar_5" labelOnTop="0"/>
    <field name="x_kodKar_6" labelOnTop="0"/>
    <field name="x_kodKarto" labelOnTop="0"/>
    <field name="x_rodzajRe" labelOnTop="0"/>
    <field name="x_skrKarto" labelOnTop="0"/>
    <field name="x_zrodloDa" labelOnTop="0"/>
    <field name="x_zrodlo_1" labelOnTop="0"/>
    <field name="zbiornikWo" labelOnTop="0"/>
    <field name="zbiornik_1" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>gml_id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
