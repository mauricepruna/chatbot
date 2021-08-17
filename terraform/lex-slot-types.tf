resource "aws_lex_slot_type" "doctor_specialties" {
  description = "Doctor Specialties"


  enumeration_value {
    synonyms = ["Brain Doctor"]
    value    = "Neurologgist"
  }

  enumeration_value {
    value = "Pediatrician"
  }

  enumeration_value {
    value = "Orthopedic"
  }
  name = "DoctorSpecialties"
}

resource "aws_lex_slot_type" "healthcare_insurance" {
  description = "Doctor Specialties"


  enumeration_value {
    value = "Happy Healthcare"
  }

  enumeration_value {
    value = "Best Care"
  }

  enumeration_value {
    value = "Discount Health"
  }
  name = "HealthcareInsurance"
}

