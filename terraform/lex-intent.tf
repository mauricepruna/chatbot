resource "aws_lex_intent" "find_doctor" {

  name        = "FindDoctor"
  description = "Intent to find a Doctor"

  fulfillment_activity {
    type = "ReturnIntent"
  }

  sample_utterances = [
    "Find me a {Language} speaking {Specialty}",
    "I need a doctor who speaks {Language}",
    "I need a doctor",
    "Find me a physician"
  ]

  slot {
    description = aws_lex_slot_type.doctor_specialties.description
    name        = "Specialty"
    priority    = 2

    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.doctor_specialties.id
    slot_type_version = "$LATEST"

    value_elicitation_prompt {
      max_attempts = 2
      message {
        content      = "What kind of Doctor do you need?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description = aws_lex_slot_type.healthcare_insurance.description
    name        = "Insurance"
    priority    = 3

    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.healthcare_insurance.id
    slot_type_version = "$LATEST"

    value_elicitation_prompt {
      max_attempts = 2
      message {
        content      = "What insurance do you have?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description = "Doctor City Location"
    name        = "City"
    priority    = 1

    slot_constraint = "Required"
    slot_type       = "AMAZON.US_CITY"


    value_elicitation_prompt {
      max_attempts = 2
      message {
        content      = "In what city do you which to see a doctor"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description = "Language"
    name        = "Language"
    priority    = 4

    slot_constraint = "Optional"
    slot_type       = "AMAZON.Language"


    value_elicitation_prompt {
      max_attempts = 2
      message {
        content      = "What language do you want to speak to the doctor in?"
        content_type = "PlainText"
      }
    }
  }
}

resource "aws_lex_intent" "cancel_medical_help" {
  create_version = false
  name           = "CancelMedicalHelp"
  description    = "Cancel Medical Help"

  fulfillment_activity {
    type = "ReturnIntent"
  }
  parent_intent_signature = "AMAZON.CancelIntent"
}
