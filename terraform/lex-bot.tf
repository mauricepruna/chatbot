resource "aws_lex_bot" "medical_help" {

  abort_statement {
    message {
      content      = "Sorry, I am not able to assist at this timez"
      content_type = "PlainText"
    }
  }

  child_directed = false

  clarification_prompt {
    max_attempts = 2

    message {
      content      = "I didn't understand you, what would you like to do?"
      content_type = "PlainText"
    }
  }

  create_version              = false
  description                 = "Bot to find medical help"
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = aws_lex_intent.find_doctor.id
    intent_version = aws_lex_intent.find_doctor.version
  }

  intent {
    intent_name    = aws_lex_intent.cancel_medical_help.id
    intent_version = aws_lex_intent.cancel_medical_help.version
  }

  locale           = "en-US"
  name             = "MedicalHelp"
  process_behavior = "BUILD"

}
