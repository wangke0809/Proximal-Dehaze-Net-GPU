path = './images/';
dehaze_path = './result/';

l = dir(path);

for i = 1 : length(l)
    l(i).name
    if l(i).name == '.'
        continue
    end
    image = imread([path, l(i).name]);
    [resim, trans] = cnn_ours_eval(image);
    imwrite(resim, [dehaze_path, l(i).name])
end