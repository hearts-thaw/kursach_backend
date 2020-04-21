package ru.itis.kursach.controllers;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.itis.kursach.dto.DiseasesResponseDto;
import ru.itis.kursach.dto.InfoResponseDto;
import ru.itis.kursach.models.District;
import ru.itis.kursach.services.DiseaseService;
import ru.itis.kursach.services.DistrictService;

import java.io.File;
import java.io.IOException;
import java.util.List;

@RestController
public class MainController {

    private final DiseaseService diseaseService;

    private final DistrictService districtService;

    public MainController(DiseaseService diseaseService, DistrictService districtService) {
        this.diseaseService = diseaseService;
        this.districtService = districtService;
    }

    @GetMapping
    public ResponseEntity<List<District>> getAllDistricts() {
        return ResponseEntity.ok(districtService.getAllDistricts());
    }

    @PostMapping
    public ResponseEntity<DiseasesResponseDto> getAllDiseaseData(
            @RequestParam(value = "disease",
                    required = false) String disease,
            @RequestParam(value = "year",
                    required = false) Short year) {
        return ResponseEntity.status(201).body(diseaseService.getAllDiseaseDataByDefault(disease, year));
    }

    @GetMapping("districts")
    public ResponseEntity<DiseasesResponseDto> getDiseaseDataByDistrict(
            @RequestParam String district,
            @RequestParam(value = "disease",
                    required = false) String disease) {
        return ResponseEntity.ok(diseaseService.getAllDiseaseDataByDistrict(district, disease));
    }


    @GetMapping("/info")
    public ResponseEntity<InfoResponseDto> getInfo() {
        ObjectMapper mapper = new ObjectMapper();
        InfoResponseDto infoResponseDto;
        try {
            infoResponseDto = mapper.readValue(new File("src/main/resources/description.json"),
                    InfoResponseDto.class);
        } catch (IOException e) {
            throw new IllegalArgumentException(e);
        }
        return ResponseEntity.ok(infoResponseDto);
    }

}