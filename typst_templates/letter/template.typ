#let letter(
  sender: none,
  recipient: none,
  date: none,
  subject: none,
  font: "PT Sans",
  name: none,
  ps: none,
  pps: none,
  politesse: none,
  display_ps: true,
  display_pps: true,
  head_size: 14pt,
  text_size: 12pt,
  ps_size: 10pt,
  pps_size: 8pt,
  lang: "en",
  signature: none,
  first-line-indent: none,
  body,
) = {
  set page(margin: (top: 2cm))
  set par(justify: true, first-line-indent: if first-line-indent != none {
    first-line-indent
  } else {
    0pt
  })


  set text(font: font, size: text_size)
  show heading: set text(head_size)

  // Display sender at top of page. If there's no sender
  // add some hidden text to keep the same spacing.
  text(9pt, if sender == none {
    hide("a")
  } else {
    sender
  })

  v(1.8cm)

  // Display recipient.
  align(right, recipient)

  v(0.5cm)

  // Display date. If there's no date add some hidden
  // text to keep the same spacing.
  align(right, if date != none {
    date
  } else {
    hide("a")
  })

  v(2cm)

  let object_verifier = lang == "fr"

  // Add the subject line, if any.
  if subject != none {
    let added_text = if object_verifier { [Objet:] } else { [Object:] }
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
      set text(size: ps_size)
      emph([PS: #ps])
    } else {
      emph(ps)
    }
  }

  if pps != none {
    v(1.25cm)
    if display_pps {
      set text(size: pps_size)
      emph([PPS: #pps])
    } else {
      emph(pps)
    }
  }
}
