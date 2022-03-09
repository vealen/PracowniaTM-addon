<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" maxScale="0" minScale="1e+08" readOnly="0" styleCategories="AllStyleCategories" simplifyDrawingHints="1" simplifyLocal="1" version="3.4.4-Madeira" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" simplifyDrawingTol="1" simplifyMaxScale="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 symbollevels="0" forceraster="0" enableorderby="0" type="RuleRenderer">
    <rules key="{0ec1e6a7-4050-493d-9390-853ddb01e9bf}">
      <rule symbol="0" key="{d704b438-a577-4efd-8016-8b7ce61d9e50}" filter=" &quot;WYDZ&quot; is null" label="puste"/>
      <rule symbol="1" key="{c7e09fd3-7997-49b8-9835-b92b7285513a}" filter=" &quot;WYDZ&quot; is not null" label="otaksowane"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" force_rhr="0" alpha="1" type="fill">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="141,95,39,0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.32"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" force_rhr="0" alpha="1" type="fill">
        <layer pass="0" locked="0" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.35"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="b_diagonal"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory minScaleDenominator="0" lineSizeType="MM" penColor="#000000" labelPlacementMethod="XHeight" scaleBasedVisibility="0" enabled="0" sizeType="MM" lineSizeScale="3x:0,0,0,0,0,0" width="15" minimumSize="0" backgroundAlpha="255" sizeScale="3x:0,0,0,0,0,0" diagramOrientation="Up" height="15" penAlpha="255" barWidth="5" penWidth="0" scaleDependency="Area" backgroundColor="#ffffff" opacity="1" maxScaleDenominator="1e+08" rotationOffset="270">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" zIndex="0" priority="0" placement="1" linePlacementFlags="18" dist="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="WYDZ">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ODDZ">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="adr_for">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="OBR">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="POW">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="WYDZ" index="0"/>
    <alias name="" field="ODDZ" index="1"/>
    <alias name="" field="adr_for" index="2"/>
    <alias name="" field="OBR" index="3"/>
    <alias name="" field="POW" index="4"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" field="WYDZ" expression=""/>
    <default applyOnUpdate="0" field="ODDZ" expression=""/>
    <default applyOnUpdate="0" field="adr_for" expression=""/>
    <default applyOnUpdate="0" field="OBR" expression=""/>
    <default applyOnUpdate="0" field="POW" expression=""/>
  </defaults>
  <constraints>
    <constraint constraints="0" unique_strength="0" field="WYDZ" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="ODDZ" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="adr_for" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="OBR" notnull_strength="0" exp_strength="0"/>
    <constraint constraints="0" unique_strength="0" field="POW" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="WYDZ" desc="" exp=""/>
    <constraint field="ODDZ" desc="" exp=""/>
    <constraint field="adr_for" desc="" exp=""/>
    <constraint field="OBR" desc="" exp=""/>
    <constraint field="POW" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortExpression="" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column name="WYDZ" hidden="0" type="field" width="-1"/>
      <column name="ODDZ" hidden="0" type="field" width="-1"/>
      <column name="adr_for" hidden="0" type="field" width="-1"/>
      <column name="OBR" hidden="0" type="field" width="-1"/>
      <column name="POW" hidden="0" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from PyQt4.QtGui import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="OBR" editable="1"/>
    <field name="ODDZ" editable="1"/>
    <field name="POW" editable="1"/>
    <field name="WYDZ" editable="1"/>
    <field name="adr_for" editable="1"/>
  </editable>
  <labelOnTop>
    <field name="OBR" labelOnTop="0"/>
    <field name="ODDZ" labelOnTop="0"/>
    <field name="POW" labelOnTop="0"/>
    <field name="WYDZ" labelOnTop="0"/>
    <field name="adr_for" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>WYDZ</previewExpression>
  <mapTip>Id</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
