
// This function gets your whole document as its `body`
// and formats it as a simple letter.
#let letter(
  // The letter's sender, which is display at the top of the page.
  sender: none,

  // The letter's recipient, which is displayed close to the top.
  recipient: none,

  // The date, displayed to the right.
  date: none,

  // The subject line.
  subject: none,

  // The name with which the letter closes.
  name: none,

  //Post-scriptum
  ps: none,
  politesse: none,
  display_ps: true,

  lang: "en",

  // The letter's content.
  body,
  signature: none,
) = {
  // Configure page and text properties.
  set page(margin: (top: 2cm))
  set par(justify: true)
  set text(font: "PT Sans")

  // Display sender at top of page. If there's no sender
  // add some hidden text to keep the same spacing.
  text(9pt, if sender == none {
    hide("a")
  } else {
    sender
  })

  v(1.8cm)

  // Display recipient.
  align(right,recipient)

  v(0.5cm)

  // Display date. If there's no date add some hidden
  // text to keep the same spacing.
  align(right, if date != none {
    date
  } else {
    hide("a")
  })

  v(2cm)

  let object_verifier = lang=="fr"

  // Add the subject line, if any.
  if subject != none {
    let added_text = if object_verifier {[Objet:]} else {[Object:]}
    pad(right: 10%, [#strong(added_text) #strong(subject)])
  }

  // Add body and name.
  body
  v(1.25cm)
  politesse
  v(0.1cm)
  name
  if signature != none {
    signature
  }
  if ps != none {
    v(1.25cm)
    if display_ps {
      emph([PS: #ps])
    }else{
      emph(ps)
    }
  }
}
