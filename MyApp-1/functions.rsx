<GlobalFunctions>
  <SqlQueryUnified
    id="playground"
    enableTransformer={true}
    isMultiplayerEdited={false}
    query={include("./lib/playground.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return formatDataAsArray(data)"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="addNewRow"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ CreateUserForm1.data }}"
    editorMode="gui"
    resourceDisplayName="retool_db"
    resourceName="b26cecf7-a31e-4cd6-aa8f-0f4b50957922"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "index" },
                { indexType: "display" },
                { index: "{{dataTable.data.length-1}}" },
                { key: null },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ UpdateUserForm1.data }}"
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ dataTable.selectedRow.id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="b26cecf7-a31e-4cd6-aa8f-0f4b50957922"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    tableName="users"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
  >
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "key" },
                { indexType: "display" },
                { index: null },
                { key: "{{ dataTable.selectedRow.id }}" },
              ],
            },
          },
        ],
      }}
      pluginId="dataTable"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="filteredTableData"
    funcBody={include("./lib/filteredTableData.js", "string")}
  />
  <JavascriptQuery id="query4" resourceName="JavascriptQuery" />
  <SqlQueryUnified
    id="getIncidents"
    query={include("./lib/getIncidents.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getUser"
    query={include("./lib/getUser.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterIncidents"
    query={include("./lib/filterIncidents.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterIncidents2"
    query={include("./lib/filterIncidents2.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterIncidents3"
    query={include("./lib/filterIncidents3.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="filterIncidents4"
    query={include("./lib/filterIncidents4.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getTeam"
    query={include("./lib/getTeam.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="addIncident"
    query={include("./lib/addIncident.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getIncidents"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal1"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="filterIncidents"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteIncident"
    query={include("./lib/deleteIncident.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getIncidents"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="filterIncidents"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getIncidents2"
    query={include("./lib/getIncidents2.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    warningCodes={[]}
  />
  <Function
    id="transformer2"
    funcBody={include("./lib/transformer2.js", "string")}
  />
  <SqlQueryUnified
    id="addTeam"
    query={include("./lib/addTeam.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getTeam"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="close"
      params={{ ordered: [] }}
      pluginId="modal2"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteTeamMember"
    query={include("./lib/deleteTeamMember.sql", "string")}
    resourceDisplayName="pagerduty"
    resourceName="333f873d-71d8-4d35-b427-0daad8250493"
    runWhenModelUpdates={false}
    warningCodes={[]}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getTeam"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
