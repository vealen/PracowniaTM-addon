<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis readOnly="0" version="3.10.3-A Coruña" simplifyDrawingHints="1" maxScale="0" labelsEnabled="0" simplifyLocal="1" minScale="1e+08" simplifyAlgorithm="0" simplifyMaxScale="1" hasScaleBasedVisibilityFlag="0" styleCategories="AllStyleCategories" simplifyDrawingTol="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 forceraster="0" attr="KOD10K" enableorderby="0" type="categorizedSymbol" symbollevels="0">
    <categories>
      <category value="0010_202" label="linia kolejowa zelektryfikowana wielotorowa" symbol="0" render="true"/>
      <category value="0010_203" label="linia kolejowa zelektryfikowana dwutorowa" symbol="1" render="true"/>
      <category value="0010_204" label="linia kolejowa zelektryfikowana jednotorowa" symbol="2" render="true"/>
      <category value="0010_206" label="linia kolejowa niezelektryfikowana wielotorowa" symbol="3" render="true"/>
      <category value="0010_207" label="linia kolejowa niezelektryfikowana dwutorowa" symbol="4" render="true"/>
      <category value="0010_208" label="linia kolejowa niezelektryfikowana jednotorowa" symbol="5" render="true"/>
      <category value="0010_209" label="linia kolejowa w budowie" symbol="6" render="true"/>
      <category value="0010_211" label="linia kolei wąskotorowej" symbol="7" render="true"/>
      <category value="0010_213" label="tor stacyjny" symbol="8" render="true"/>
      <category value="0010_217" label="linia tramwajowa dwutorowa" symbol="9" render="true"/>
      <category value="0010_218" label="linia tramwajowa jednotorowa" symbol="10" render="true"/>
    </categories>
    <symbols>
      <symbol name="0" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="104" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="100" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@2" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="255,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="96" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@0@3" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="1" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="100" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@1@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="104" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@1@2" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="10" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="100" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="100" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@10@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="255,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="1" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="8" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="2" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="100" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@2@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="3" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="flat" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="50;150" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="255,255,255,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="3" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
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
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="125" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@3@2" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="121" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@3@3" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="129" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@3@4" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="4" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="flat" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="50;150" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="255,255,255,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="3" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
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
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="127" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@4@2" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MapUnit" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="123" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@4@3" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="35,35,35,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="5" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="flat" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="50;150" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="255,255,255,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="3" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
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
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="200" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="125" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@5@2" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="2" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="10" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="6" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="60;10" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.5" k="line_width"/>
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
      <symbol name="7" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2.5" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="150" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="75" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@7@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="1.5" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="8.5" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
      <symbol name="8" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="round" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
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
      <symbol name="9" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MapUnit" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="0,0,0,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="2" k="line_width"/>
          <prop v="MapUnit" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
          <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer locked="0" pass="0" class="MarkerLine" enabled="1">
          <prop v="4" k="average_angle_length"/>
          <prop v="3x:0,0,0,0,0,0" k="average_angle_map_unit_scale"/>
          <prop v="MM" k="average_angle_unit"/>
          <prop v="100" k="interval"/>
          <prop v="3x:0,0,0,0,0,0" k="interval_map_unit_scale"/>
          <prop v="MapUnit" k="interval_unit"/>
          <prop v="0" k="offset"/>
          <prop v="100" k="offset_along_line"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_along_line_map_unit_scale"/>
          <prop v="MapUnit" k="offset_along_line_unit"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MapUnit" k="offset_unit"/>
          <prop v="interval" k="placement"/>
          <prop v="0" k="ring_filter"/>
          <prop v="1" k="rotate"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" name="name" type="QString"/>
              <Option name="properties"/>
              <Option value="collection" name="type" type="QString"/>
            </Option>
          </data_defined_properties>
          <symbol name="@9@1" force_rhr="0" type="marker" alpha="1" clip_to_extent="1">
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="0,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="1" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="8" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
            <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
              <prop v="0" k="angle"/>
              <prop v="0,0,0,255" k="color"/>
              <prop v="1" k="horizontal_anchor_point"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="line" k="name"/>
              <prop v="5,0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MapUnit" k="offset_unit"/>
              <prop v="0,0,0,255" k="outline_color"/>
              <prop v="solid" k="outline_style"/>
              <prop v="1" k="outline_width"/>
              <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
              <prop v="MapUnit" k="outline_width_unit"/>
              <prop v="diameter" k="scale_method"/>
              <prop v="8" k="size"/>
              <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
              <prop v="MapUnit" k="size_unit"/>
              <prop v="1" k="vertical_anchor_point"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" name="name" type="QString"/>
                  <Option name="properties"/>
                  <Option value="collection" name="type" type="QString"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
    <source-symbol>
      <symbol name="0" force_rhr="0" type="line" alpha="1" clip_to_extent="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop v="square" k="capstyle"/>
          <prop v="5;2" k="customdash"/>
          <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
          <prop v="MM" k="customdash_unit"/>
          <prop v="0" k="draw_inside_polygon"/>
          <prop v="bevel" k="joinstyle"/>
          <prop v="128,195,159,255" k="line_color"/>
          <prop v="solid" k="line_style"/>
          <prop v="0.26" k="line_width"/>
          <prop v="MM" k="line_width_unit"/>
          <prop v="0" k="offset"/>
          <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
          <prop v="MM" k="offset_unit"/>
          <prop v="0" k="ring_filter"/>
          <prop v="0" k="use_custom_dash"/>
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
    </source-symbol>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" scaleBasedVisibility="0" minimumSize="0" backgroundAlpha="255" penAlpha="255" penColor="#000000" rotationOffset="270" opacity="1" minScaleDenominator="0" diagramOrientation="Up" width="15" height="15" lineSizeType="MM" barWidth="5" maxScaleDenominator="1e+08" enabled="0" penWidth="0" labelPlacementMethod="XHeight" scaleDependency="Area" backgroundColor="#ffffff" sizeType="MM">
      <fontProperties description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0" style=""/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings zIndex="0" placement="2" showAll="1" dist="0" linePlacementFlags="18" priority="0" obstacle="0">
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
    <checkConfiguration/>
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
    <field name="x_informDo">
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
    <field name="funkcjaTor">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="liczbaToro">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="polozenie">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rodzajPoja">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rodzajToro">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="rodzajTrak">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="x_doklGeom">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="liniaKolej">
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
    <field name="liniaKol_1">
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
    <alias index="17" name="" field="x_informDo"/>
    <alias index="18" name="" field="x_kodKarto"/>
    <alias index="19" name="" field="x_kodKar_1"/>
    <alias index="20" name="" field="x_kodKar_2"/>
    <alias index="21" name="" field="x_kodKar_3"/>
    <alias index="22" name="" field="x_kodKar_4"/>
    <alias index="23" name="" field="x_kodKar_5"/>
    <alias index="24" name="" field="x_kodKar_6"/>
    <alias index="25" name="" field="funkcjaTor"/>
    <alias index="26" name="" field="liczbaToro"/>
    <alias index="27" name="" field="polozenie"/>
    <alias index="28" name="" field="rodzajPoja"/>
    <alias index="29" name="" field="rodzajToro"/>
    <alias index="30" name="" field="rodzajTrak"/>
    <alias index="31" name="" field="x_doklGeom"/>
    <alias index="32" name="" field="liniaKolej"/>
    <alias index="33" name="" field="KOD10K"/>
    <alias index="34" name="" field="liniaKol_1"/>
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
    <default field="x_informDo" expression="" applyOnUpdate="0"/>
    <default field="x_kodKarto" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_1" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_2" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_3" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_4" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_5" expression="" applyOnUpdate="0"/>
    <default field="x_kodKar_6" expression="" applyOnUpdate="0"/>
    <default field="funkcjaTor" expression="" applyOnUpdate="0"/>
    <default field="liczbaToro" expression="" applyOnUpdate="0"/>
    <default field="polozenie" expression="" applyOnUpdate="0"/>
    <default field="rodzajPoja" expression="" applyOnUpdate="0"/>
    <default field="rodzajToro" expression="" applyOnUpdate="0"/>
    <default field="rodzajTrak" expression="" applyOnUpdate="0"/>
    <default field="x_doklGeom" expression="" applyOnUpdate="0"/>
    <default field="liniaKolej" expression="" applyOnUpdate="0"/>
    <default field="KOD10K" expression="" applyOnUpdate="0"/>
    <default field="liniaKol_1" expression="" applyOnUpdate="0"/>
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
    <constraint unique_strength="0" exp_strength="0" field="x_informDo" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKarto" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_1" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_2" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_3" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_4" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_5" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_kodKar_6" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="funkcjaTor" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="liczbaToro" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="polozenie" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="rodzajPoja" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="rodzajToro" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="rodzajTrak" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="x_doklGeom" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="liniaKolej" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="KOD10K" notnull_strength="0" constraints="0"/>
    <constraint unique_strength="0" exp_strength="0" field="liniaKol_1" notnull_strength="0" constraints="0"/>
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
    <constraint field="x_informDo" exp="" desc=""/>
    <constraint field="x_kodKarto" exp="" desc=""/>
    <constraint field="x_kodKar_1" exp="" desc=""/>
    <constraint field="x_kodKar_2" exp="" desc=""/>
    <constraint field="x_kodKar_3" exp="" desc=""/>
    <constraint field="x_kodKar_4" exp="" desc=""/>
    <constraint field="x_kodKar_5" exp="" desc=""/>
    <constraint field="x_kodKar_6" exp="" desc=""/>
    <constraint field="funkcjaTor" exp="" desc=""/>
    <constraint field="liczbaToro" exp="" desc=""/>
    <constraint field="polozenie" exp="" desc=""/>
    <constraint field="rodzajPoja" exp="" desc=""/>
    <constraint field="rodzajToro" exp="" desc=""/>
    <constraint field="rodzajTrak" exp="" desc=""/>
    <constraint field="x_doklGeom" exp="" desc=""/>
    <constraint field="liniaKolej" exp="" desc=""/>
    <constraint field="KOD10K" exp="" desc=""/>
    <constraint field="liniaKol_1" exp="" desc=""/>
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
      <column name="x_informDo" width="-1" type="field" hidden="0"/>
      <column name="x_kodKarto" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_1" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_2" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_3" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_4" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_5" width="-1" type="field" hidden="0"/>
      <column name="x_kodKar_6" width="-1" type="field" hidden="0"/>
      <column name="funkcjaTor" width="-1" type="field" hidden="0"/>
      <column name="liczbaToro" width="-1" type="field" hidden="0"/>
      <column name="polozenie" width="-1" type="field" hidden="0"/>
      <column name="rodzajPoja" width="-1" type="field" hidden="0"/>
      <column name="rodzajToro" width="-1" type="field" hidden="0"/>
      <column name="rodzajTrak" width="-1" type="field" hidden="0"/>
      <column name="x_doklGeom" width="-1" type="field" hidden="0"/>
      <column name="liniaKolej" width="-1" type="field" hidden="0"/>
      <column name="KOD10K" width="-1" type="field" hidden="0"/>
      <column name="liniaKol_1" width="-1" type="field" hidden="0"/>
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
    <field editable="1" name="czyObiektB"/>
    <field editable="1" name="funkcjaTor"/>
    <field editable="1" name="gml_id"/>
    <field editable="1" name="koniecWers"/>
    <field editable="1" name="liczbaToro"/>
    <field editable="1" name="liniaKol_1"/>
    <field editable="1" name="liniaKolej"/>
    <field editable="1" name="lokalnyId"/>
    <field editable="1" name="poczatekWe"/>
    <field editable="1" name="polozenie"/>
    <field editable="1" name="przestrzen"/>
    <field editable="1" name="rodzajPoja"/>
    <field editable="1" name="rodzajToro"/>
    <field editable="1" name="rodzajTrak"/>
    <field editable="1" name="wersjaId"/>
    <field editable="1" name="x_aktual_1"/>
    <field editable="1" name="x_aktualno"/>
    <field editable="1" name="x_dataUtwo"/>
    <field editable="1" name="x_doklGeom"/>
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
  </editable>
  <labelOnTop>
    <field name="KOD10K" labelOnTop="0"/>
    <field name="czyObiektB" labelOnTop="0"/>
    <field name="funkcjaTor" labelOnTop="0"/>
    <field name="gml_id" labelOnTop="0"/>
    <field name="koniecWers" labelOnTop="0"/>
    <field name="liczbaToro" labelOnTop="0"/>
    <field name="liniaKol_1" labelOnTop="0"/>
    <field name="liniaKolej" labelOnTop="0"/>
    <field name="lokalnyId" labelOnTop="0"/>
    <field name="poczatekWe" labelOnTop="0"/>
    <field name="polozenie" labelOnTop="0"/>
    <field name="przestrzen" labelOnTop="0"/>
    <field name="rodzajPoja" labelOnTop="0"/>
    <field name="rodzajToro" labelOnTop="0"/>
    <field name="rodzajTrak" labelOnTop="0"/>
    <field name="wersjaId" labelOnTop="0"/>
    <field name="x_aktual_1" labelOnTop="0"/>
    <field name="x_aktualno" labelOnTop="0"/>
    <field name="x_dataUtwo" labelOnTop="0"/>
    <field name="x_doklGeom" labelOnTop="0"/>
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
  </labelOnTop>
  <widgets/>
  <previewExpression>gml_id</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
