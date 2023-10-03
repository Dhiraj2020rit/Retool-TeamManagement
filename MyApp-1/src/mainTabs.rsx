<Container
  id="mainTabs"
  currentViewKey="{{ self.viewKeys[0] }}"
  showBody={true}
  showHeader={true}
  style={{ ordered: [] }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{ ordered: [{ selectedText: "success" }] }}
      targetContainerId="mainTabs"
      value="{{ self.values[0] }}"
    >
      <Option id="86ec4" value="Tab 1" />
      <Option id="1a9ac" value="Tab 2" />
      <Option id="bf405" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="b2a0d" viewKey="Incidents">
    <Text
      id="text1"
      value="<h1>Incidents on all teams</h1>"
      verticalAlign="center"
    />
    <Include src="./modal1.rsx" />
    <Divider id="divider1" />
    <Text
      id="text5"
      value="<h5>All Open Incidents</h5>"
      verticalAlign="center"
    />
    <Text
      id="text2"
      value="<h5>Your Open Incidents</h5>"
      verticalAlign="center"
    />
    <Include src="./container1.rsx" />
    <Text
      id="text3"
      style={{ ordered: [{ color: "danger" }] }}
      value="{{filterIncidents.data.triggered.filter(i=>i==true).length}} triggered"
      verticalAlign="center"
    />
    <Text
      id="text6"
      style={{ ordered: [{ color: "danger" }] }}
      value="{{getIncidents.data.triggered.filter(i=>i==true).length}} triggered"
      verticalAlign="center"
    />
    <Text
      id="text4"
      style={{ ordered: [{ color: "info" }] }}
      value="{{filterIncidents.data.acknowledgement.filter(i=>i==true).length}} acknowledged"
      verticalAlign="center"
    />
    <Text
      id="text7"
      style={{ ordered: [{ color: "info" }] }}
      value="{{getIncidents.data.acknowledgement.filter(i=>i==true).length}} acknowledged"
      verticalAlign="center"
    />
    <Table
      id="table1"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getIncidents.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      primaryKeyColumnId="c78b7"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="c78b7"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={28}
        summaryAggregationMode="none"
      />
      <Column
        id="0a61a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="urgency"
        label="Urgency"
        placeholder="Enter value"
        position="center"
        size={65.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="02254"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="triggered"
        label="Triggered"
        placeholder="Enter value"
        position="center"
        size={72.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="315af"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="acknowledgement"
        label="Acknowledgement"
        placeholder="Enter value"
        position="center"
        size={124.890625}
        summaryAggregationMode="none"
      />
      <Column
        id="55591"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="resolved"
        label="Resolved"
        placeholder="Enter value"
        position="center"
        size={69.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="104ea"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="description"
        label="Description"
        placeholder="Enter value"
        position="center"
        size={193.59375}
        summaryAggregationMode="none"
      />
      <Column
        id="ff6e6"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="assigned_to"
        label="Assigned to"
        placeholder="Enter value"
        position="center"
        size={85.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="f4896"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="created_date"
        label="Created date"
        placeholder="Enter value"
        position="center"
        size={95.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="c07f0"
        alignment="left"
        cellTooltip="{{ item }}"
        cellTooltipMode="custom"
        format="tag"
        formatOptions={{
          automaticColors: false,
          icon: "bold/interface-delete-bin-2",
          color: "red",
        }}
        groupAggregationMode="average"
        label="Delete"
        placeholder="Select option"
        position="center"
        referenceId="delete"
        size={100}
        summaryAggregationMode="none"
        valueOverride="DELETE"
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteIncident"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
    </Table>
    <Include src="./container2.rsx" />
  </View>
  <View id="1e6e1" viewKey="Team Members">
    <Text id="text17" value="<h1>Team Members</h1>" verticalAlign="center" />
    <Include src="./modal2.rsx" />
    <Table
      id="teamTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ getTeam.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      rowHeight="medium"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b82c4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={39.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="69cee"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="first_name"
        label="First name"
        placeholder="Enter value"
        position="center"
        size={77.140625}
        summaryAggregationMode="none"
      />
      <Column
        id="93a8b"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="last_name"
        label="Last name"
        placeholder="Enter value"
        position="center"
        size={75.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="cd238"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="email"
        label="Email"
        position="center"
        size={154.625}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="09599"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="number"
        label="Number"
        placeholder="Enter value"
        position="center"
        size={111.421875}
        summaryAggregationMode="none"
      />
      <Column
        id="0e535"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        hidden="true"
        key="avathar"
        label="Avathar"
        position="center"
        size={665.390625}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="d5b5d"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="oncall"
        label="Oncall"
        placeholder="Enter value"
        position="center"
        size={52.6875}
        summaryAggregationMode="none"
      />
      <Column
        id="30c53"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="shift_start"
        label="Shift start"
        placeholder="Enter value"
        position="center"
        size={87.5625}
        summaryAggregationMode="none"
      />
      <Column
        id="f198c"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="shift_end"
        label="Shift end"
        placeholder="Enter value"
        position="center"
        size={95.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="c2545"
        alignment="left"
        cellTooltipMode="overflow"
        format="tags"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="incident"
        label="Incident"
        placeholder="Select options"
        position="center"
        size={357}
        summaryAggregationMode="none"
      />
      <Column
        id="3fe4b"
        alignment="left"
        format="tag"
        formatOptions={{
          automaticColors: false,
          icon: "bold/interface-delete-bin-2",
          color: "red",
        }}
        groupAggregationMode="none"
        label="DELETE"
        placeholder="Select option"
        position="center"
        referenceId="delete"
        size={81.1875}
        summaryAggregationMode="none"
        valueOverride="Delete"
      >
        <Event
          event="clickCell"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteTeamMember"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="teamTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="teamTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Include src="./container3.rsx" />
  </View>
</Container>
