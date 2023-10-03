<Modal
  id="modal1"
  buttonText="Add Incident"
  closeOnOutsideClick={true}
  modalHeight="400px"
  modalHeightType="auto"
  style={{ ordered: [{ "accent-background": "rgb(20, 135, 72)" }] }}
  styleContext={{ ordered: [] }}
>
  <Text id="text25" value="<h2>Add Incident</h2>" verticalAlign="center" />
  <Divider id="divider2" />
  <NumberInput
    id="numberInput1"
    currency="USD"
    inputValue={0}
    label="Incident ID"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value={0}
  />
  <Select
    id="select1"
    emptyMessage="No options"
    itemMode="static"
    label="Urgency"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
  >
    <Option id="da5fa" value="High" />
    <Option id="0232f" value="Medium" />
    <Option id="6342f" value="Low" />
  </Select>
  <Switch id="switch1" label="Triggered" />
  <Switch id="switch2" label="Acknowledged" />
  <Switch id="switch3" label="Resolved" />
  <TextInput
    id="textInput1"
    label="Description"
    maxLength="30"
    placeholder="Enter value"
  />
  <Select
    id="select2"
    captionByIndex="{{ item.email }}"
    data="{{ getTeam.data }}"
    emptyMessage="No options"
    label="Assigned to:"
    labels="{{ `${item.first_name} ${item.last_name}` }}"
    overlayMaxHeight={375}
    placeholder="Select an option"
    showSelectionIndicator={true}
    values="{{ item.id }}"
  />
  <Button
    id="button3"
    style={{ ordered: [{ background: "success" }] }}
    styleVariant="solid"
    submitTargetId=""
    text="Submit"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="addIncident"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
