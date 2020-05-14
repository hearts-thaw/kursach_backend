var c = document.getElementById('canvas');
var ctx = c.getContext('2d');

var positions = [150, 340, 530, 720, 910, 1100, 1290, 1480];
//values in graph (program choose 1 of them and make it like 100%) #changeThis
var values = [12405, 6535, 6866, 1754, 20102, 14504, 21489, 3477];
//percent values in graph #changeThis
var percents = [33, 40.3, 41.3, 16, 68, 117.4, 115.2, 33.1];

function drawBorderLines() {
    //vertical line
    ctx.beginPath();
    ctx.moveTo(67, 92);
    ctx.lineTo(67, c.height - 133);
    ctx.lineWidth = 5;
    ctx.strokeStyle = "white";
    ctx.stroke();
    //horizontal line
    ctx.beginPath();
    ctx.moveTo(81, c.height - 130);
    ctx.lineTo(c.width, c.height - 130);
    ctx.lineWidth = 5;
    ctx.strokeStyle = "white";
    ctx.stroke();
}

function drawRegionsNames() {
    //regions names (text)
    writeTextForRegions('Центральный\nфедеральный\nокруг', positions[0], true);
    writeTextForRegions('Северо-Западный\nфедеральный\nокруг', positions[1], true);
    writeTextForRegions('Южный\nфедеральный\nокруг', positions[2], true);
    writeTextForRegions('Северо-Кавказский\nфедеральный\nокруг', positions[3], true);
    writeTextForRegions('Приволжский\nфедеральный\nокруг', positions[4], true);
    writeTextForRegions('Уральский\nфедеральный\nокруг', positions[5], true);
    writeTextForRegions('Сибирский\nфедеральный\nокруг', positions[6], true);
    writeTextForRegions('Дальневосточный\nфедеральный\nокруг', positions[7], true);
}

function writeTextForRegions(txt, x, invert) {
    ctx.font = "24px Roboto Condensed";
    ctx.fillStyle = "white";
    ctx.textAlign = "center";
    var lines = txt.split('\n');
    var size;
    if (invert)
        size = c.height - lines.length * 30;
    else
        size = 30;
    for (var i = lines.length - 1; i >= 0; i--)
        ctx.fillText(lines[i], x, size + (i * 30));
}

function drawLeft(max) {
    //left values
    ctx.font = "18px Roboto Condensed";
    ctx.fillStyle = "white";
    ctx.textAlign = "right";
    ctx.fillText(max, 60, 92);
    ctx.fillText(parseInt(max * 2 / 3), 60, 273);
    ctx.fillText(parseInt(max / 3), 60, 454);
}

function drawValues() {
    //up values
    for (var i = 0; i < values.length; i++) {
        var text = values[i] + " / " + percents[i] + "%";
        ctx.font = "bold 24px Roboto Condensed";
        ctx.fillStyle = "#EF1010";
        ctx.textAlign = "right";
        ctx.fillText(values[i], positions[i] - 5, 30);
        ctx.fillStyle = "white";
        ctx.textAlign = "center";
        ctx.fillText("/", positions[i], 30);
        ctx.fillStyle = "#1A6BE4";
        ctx.textAlign = "left";
        ctx.fillText(percents[i] + "%", positions[i] + 5, 30);
        ctx.font = "24px Roboto Condensed";
        ctx.fillStyle = "white";
        ctx.textAlign = "center";
        ctx.fillText("заболеваний", positions[i], 60);
    }
}

function calculateMaxValue() {
    var max = 0;
    for (var i = 0; i < values.length; i++) {
        if (values[i] > max)
            max = values[i];
    }
    return (parseInt(max / 3000) + 1) * 3000;
}

function drawCircle(x, y, color) {
    ctx.beginPath();
    ctx.arc(x, y, 5, 0, Math.PI * 2, true);
    ctx.lineWidth = 10;
    ctx.strokeStyle = color;
    ctx.stroke();
    //draw black dot in middle
    ctx.beginPath();
    ctx.arc(x, y, 3, 0, Math.PI * 2, true);
    ctx.lineWidth = 6;
    ctx.strokeStyle = 'black';
    ctx.stroke();
}

function drawLine(x1, y1, x2, y2, color) {
    ctx.beginPath();
    ctx.moveTo(x1, y1);
    ctx.lineTo(x2, y2);
    ctx.lineWidth = 4;
    ctx.strokeStyle = color;
    ctx.stroke();
}

function drawValueGraph(maxValue) {
    for (var i = 1; i < positions.length; i++) {
        drawLine(positions[i - 1], (1 - values[i - 1] / maxValue) * 543 + 92, positions[i], (1 - values[i] / maxValue) * 543 + 92, '#EF1010');
    }
    for (var i = 0; i < positions.length; i++) {
        drawCircle(positions[i], (1 - values[i] / maxValue) * 543 + 92, '#EF1010');
    }
}

function drawPercentGraph(maxPercent) {
    for (var i = 1; i < positions.length; i++) {
        drawLine(positions[i - 1], (1 - percents[i - 1] / maxPercent) * 543 + 92, positions[i], (1 - percents[i] / maxPercent) * 543 + 92, '#1A6BE4');
    }
    for (var i = 0; i < positions.length; i++) {
        drawCircle(positions[i], (1 - percents[i] / maxPercent) * 543 + 92, '#1A6BE4');
    }
}

function calculateMaxPercent() {
    var max = 0;
    for (var i = 0; i < percents.length; i++) {
        if (percents[i] > max)
            max = percents[i];
    }
    return (parseInt(max / 10) + 1) * 10;
}

WebFont.load({
    google: {
        families: ['Roboto','Roboto Condensed'],
        text: 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ 0123456789 %/-'
    },
    active: function() {
        loop();
    }
});

function loop() {
    ctx.fillStyle = '#0B0A0A';
    ctx.fillRect(0, 0, c.width, c.height);

    drawBorderLines();
    drawRegionsNames();
    drawValues();
    var max = calculateMaxValue();
    drawLeft(max);
    drawValueGraph(max);
    drawPercentGraph(calculateMaxPercent());
}