<Container id="container2" showBody={true} showHeader="">
  <Header>
    <Text
      id="containerTitle2"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="ff50c" viewKey="View 1">
    <Text
      id="text11"
      style={{ ordered: [{ color: "success" }] }}
      value="<b>ON CALL NOW</b>"
      verticalAlign="center"
    />
    <Text
      id="text12"
      value="<h5>{{getUser.data.incident}}</h5>"
      verticalAlign="center"
    />
    <Text id="text13" value="<b>Your Shift:</b>" verticalAlign="center" />
    <Text
      id="text14"
      value="From: {{getUser.data.shift_start}}"
      verticalAlign="center"
    />
    <Text
      id="text15"
      value="To: {{getUser.data.shift_end}}"
      verticalAlign="center"
    />
    <Text
      id="text16"
      value="Contact info@gmail.com to change in shifts."
      verticalAlign="center"
    />
  </View>
</Container>
