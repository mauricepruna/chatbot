# Medical chatbot

- Intent
- Utterances
- Slots
- Prompts

---

#### Intent

| Custom Intents    | AWS Intents             |
| ----------------- | ----------------------- |
| - FindDoctor      | - AMAZON.CancelIntent   |
| - BookAppointment | - AMAZON.PauseIntent    |
| - RateDoctor      | - AMAZON.FallbackIntent |

#### Utterances

- I need a doctor
- Can you recommend a physician?
- Who is good M.D.?
- Find me a Physician
- Get me a doc

**note:** We can start with 8-12, max 1500

| 1     | 2     | 3            |
| ----- | ----- | ------------ |
| Nouns | Verbs | Contractions |
| Long  | Brief | Synonyms     |

#### Slots

| Custom Slot Types   | AWS Slots Types       |
| ------------------- | --------------------- |
| - InsuranceProvider | - AMAZON.Language     |
| - MedicalDegree     | - AMAZON.US_CITY      |
| - MedicalSpecialty  | - AMAZON.US_LAST_NAME |
