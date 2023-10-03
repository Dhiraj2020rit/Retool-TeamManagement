<Container id="container1" showBody={true} showFooter={true} showHeader="">
  <Header>
    <Text
      id="containerTitle1"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="ff50c" viewKey="View 1">
    <Text
      id="text8"
      style={{ ordered: [{ color: "success" }] }}
      value="<b>On-call</b>"
      verticalAlign="center"
    />
    <Text
      id="text9"
      value="<h3>{{getUser.data.first_name}} {{getUser.data.last_name}}</h3>"
      verticalAlign="center"
    />
    <Avatar
      id="avatar1"
      fallback="XX"
      imageSize={32}
      label="{{getUser.data.first_name}}
{{getUser.data.last_name}}"
      labelCaption="{{getUser.data.email[0]}}"
      src="{{getUser.data.avathar[0]}}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </View>
  <Footer>
    <Text
      id="text10"
      value="<b>You are on call for:</b>"
      verticalAlign="center"
    />
    <Tags
      id="tags1"
      allowWrap={true}
      colors="{{ theme.automatic }}"
      hashColors={true}
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      value="{{getUser.data.incident[0]}}"
    />
  </Footer>
</Container>
