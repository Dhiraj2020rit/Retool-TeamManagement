<Modal
  id="modal2"
  buttonText="Add Team Members"
  closeOnOutsideClick={true}
  style={{ ordered: [{ "accent-background": "rgba(20, 135, 72, 1)" }] }}
>
  <Text
    id="text26"
    value="<h3>Add new Team Member</h3>"
    verticalAlign="center"
  />
  <Divider id="divider3" />
  <NumberInput
    id="numberInput2"
    currency="USD"
    inputValue={0}
    label="Team Member ID:"
    placeholder="Enter value"
    showSeparators={true}
    showStepper={true}
    value={0}
  />
  <TextInput id="textInput2" label="First Name:" placeholder="Enter value" />
  <TextInput id="textInput3" label="Last Name:" placeholder="Enter value" />
  <TextInput
    id="email1"
    iconBefore="bold/mail-send-envelope"
    label="Email:"
    patternType="email"
    placeholder="you@example.com"
  />
  <TextInput
    id="textInput4"
    hideLabel={false}
    label="Phone Number"
    maxLength="10"
    minLength="10"
    pattern="^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$"
    patternType="regex"
    placeholder="Enter Phone Number"
    required={true}
  />
  <TextInput id="textInput5" label="Avathar Image" placeholder="Enter value" />
  <Checkbox id="checkbox1" label="On Call" />
  <Date
    id="date1"
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="Start Date"
    value="{{ new Date() }}"
  />
  <Date
    id="date2"
    dateFormat="MMM d, yyyy"
    datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
    iconBefore="bold/interface-calendar"
    label="End Date"
    value="{{ new Date() }}"
  />
  <Multiselect
    id="multiselect1"
    emptyMessage="No options"
    itemMode="static"
    label="Operations"
    overlayMaxHeight={375}
    placeholder="Select options"
    showSelectionIndicator={true}
    wrapTags={true}
  >
    <Option id="6d2dc" value="Software Developer" />
    <Option id="dc99a" value="Web Developer" />
    <Option id="225d8" value="App Developer" />
  </Multiselect>
  <Button
    id="button4"
    style={{ ordered: [{ background: "success" }] }}
    styleVariant="solid"
    text="Submit"
  >
    <Event
      event="click"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="addTeam"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </Button>
</Modal>
