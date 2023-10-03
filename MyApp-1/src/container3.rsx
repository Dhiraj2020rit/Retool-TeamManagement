<Container id="container3" showBody={true} showFooter={true} showHeader="">
  <Header>
    <Text
      id="containerTitle3"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="ff50c" viewKey="View 1">
    <Avatar
      id="avatar2"
      fallback="{{ current_user.fullName }}"
      imageSize={32}
      label="{{ teamTable.selectedRow.first_name }}
{{ teamTable.selectedRow.last_name }}"
      labelCaption="{{ teamTable.selectedRow.email }}"
      src="{{ teamTable.selectedRow.avathar }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </View>
  <Footer>
    <Text
      id="text20"
      value="<b>Assigned Operstions:</b>"
      verticalAlign="center"
    />
    <Tags
      id="tags2"
      allowWrap={true}
      colors="{{ theme.automatic }}"
      hashColors={true}
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      value="{{teamTable.selectedRow.incident}}"
    />
    <Text id="text21" value="<b>Shift Dates:</b>" verticalAlign="center" />
    <Text
      id="text22"
      value="From: {{teamTable.selectedRow.shift_start}}"
      verticalAlign="center"
    />
    <Text
      id="text23"
      value="To: {{teamTable.selectedRow.shift_end}}"
      verticalAlign="center"
    />
    <Text
      id="text24"
      value="{{teamTable.selectedRow.email}}"
      verticalAlign="center"
    />
  </Footer>
</Container>
