<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Include src="./src/mainTabs.rsx" />
    <Form
      id="form1"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "highlight" }] }}
    >
      <Header>
        <Text
          id="formTitle1"
          value="#### Email Composer"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextEditor
          id="richTextEditor1"
          value="Hai {{teamTable.selectedRow.first_name}},
"
        />
      </Body>
      <Footer>
        <Button
          id="formButton1"
          style={{ ordered: [{ background: "warning" }] }}
          styleVariant="solid"
          submit={true}
          submitTargetId="form1"
          text="Send to {{teamTable.selectedRow.email}}"
        />
      </Footer>
    </Form>
    <TextInput
      id="nameFilter"
      _disclosedFields={["iconBefore"]}
      hideLabel={true}
      iconBefore="bold/interface-search"
      placeholder="Search by name"
    />
  </Frame>
</App>
