package ru.itis.kursach_backend.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class InfoResponseDto {
    DiseaseInfoResponseDto вич;
    DiseaseInfoResponseDto артериальнаяГипертензия;
    DiseaseInfoResponseDto сахарныйДиабет;
    DiseaseInfoResponseDto гепатит;
    DiseaseInfoResponseDto психическиеЗаболевания;
    DiseaseInfoResponseDto туберкулез;
    DiseaseInfoResponseDto новообразования;
}