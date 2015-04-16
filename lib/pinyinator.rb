module Pinyin
  Regex = /(shuang|chuang|zhuang|xiang|qiong|shuai|niang|guang|sheng|kuang|shang|jiong|huang|jiang|shuan|xiong|zhang|zheng|zhong|zhuai|zhuan|qiang|chang|liang|chuan|cheng|chong|chuai|hang|peng|chuo|piao|pian|chua|ping|yang|pang|chui|chun|chen|chan|chou|chao|chai|zhun|mang|meng|weng|shai|shei|miao|zhui|mian|yong|ming|wang|zhuo|zhua|shao|yuan|bing|zhen|fang|feng|zhan|zhou|zhao|zhei|zhai|rang|suan|reng|song|seng|dang|deng|dong|xuan|sang|rong|duan|cuan|cong|ceng|cang|diao|ruan|dian|ding|shou|xing|zuan|jiao|zong|zeng|zang|jian|tang|teng|tong|bian|biao|shan|tuan|huan|xian|huai|tiao|tian|hong|xiao|heng|ying|jing|shen|beng|kuan|kuai|nang|neng|nong|juan|kong|nuan|keng|kang|shua|niao|guan|nian|ting|shuo|guai|ning|quan|qiao|shui|gong|geng|gang|qian|bang|lang|leng|long|qing|ling|luan|shun|lian|liao|zhi|lia|liu|qin|lun|lin|luo|lan|lou|qiu|gai|gei|gao|gou|gan|gen|lao|lei|lai|que|gua|guo|nin|gui|niu|nie|gun|qie|qia|jun|kai|kei|kao|kou|kan|ken|qun|nun|nuo|xia|kua|kuo|nen|kui|nan|nou|kun|jue|nao|nei|hai|hei|hao|hou|han|hen|nai|rou|xiu|jin|hua|huo|tie|hui|tun|tui|hun|tuo|tan|jiu|zai|zei|zao|zou|zan|zen|eng|tou|tao|tei|tai|zuo|zui|xin|zun|jie|jia|run|diu|cai|cao|cou|can|cen|die|dia|xue|rui|cuo|cui|dun|cun|cin|ruo|rua|dui|sai|sao|sou|san|sen|duo|den|dan|dou|suo|sui|dao|sun|dei|zha|zhe|dai|xun|ang|ong|wai|fen|fan|fou|fei|zhu|wei|wan|min|miu|mie|wen|men|lie|chi|cha|che|man|mou|mao|mei|mai|yao|you|yan|chu|pin|pie|yin|pen|pan|pou|pao|shi|sha|she|pei|pai|yue|bin|bie|yun|nüe|lve|shu|ben|ban|bao|bei|bai|lüe|nve|ren|ran|rao|xie|re|ri|si|su|se|ru|sa|cu|ce|ca|ji|ci|zi|zu|ze|za|hu|he|ha|ju|ku|ke|qi|ka|gu|ge|ga|li|lu|le|qu|la|ni|xi|nu|ne|na|ti|tu|te|ta|xu|di|du|de|bo|lv|ba|ai|ei|ao|ou|an|en|er|da|wu|wa|wo|fu|fo|fa|nv|mi|mu|yi|ya|ye|me|mo|ma|pi|pu|po|yu|pa|bi|nü|bu|lü|e|o|a)r?([1-5])/i
  
  AntiRegex = /(ā|ē|ī|ō|ū|ǖ|Ā|Ē|Ī|Ō|Ū|Ǖ|á|é|í|ó|ú|ǘ|Á|É|Í|Ó|Ú|Ǘ|ǎ|ě|ǐ|ǒ|ǔ|ǚ|Ǎ|Ě|Ǐ|Ǒ|Ǔ|Ǚ|à|è|ì|ò|ù|ǜ|À|È|Ì|Ò|Ù|Ǜ)/

  Vowels = {
    'a*' => 0,
    'e*' => 1,
    'i*' => 2,
    'o*' => 3,
    'u*' => 4,
    'ü*' => 5,
    'A*' => 6,
    'E*' => 7,
    'I*' => 8,
    'O*' => 9,
    'U*' => 10,
    'Ü*' => 11
  }

  Pinyin = {
    "1" => ['ā','ē','ī','ō','ū','ǖ','Ā','Ē','Ī','Ō','Ū','Ǖ'],
    "2" => ['á','é','í','ó','ú','ǘ','Á','É','Í','Ó','Ú','Ǘ'],
    "3" => ['ǎ','ě','ǐ','ǒ','ǔ','ǚ','Ǎ','Ě','Ǐ','Ǒ','Ǔ','Ǚ'],
    "4" => ['à','è','ì','ò','ù','ǜ','À','È','Ì','Ò','Ù','Ǜ'],
    "5" => ['a','e','i','o','u','ü','A','E','I','O','U','Ü']
  }

  AntiPinyin = {
    'ā' => 'a1',
    'ē' => 'e1',
    'ī' => 'i1',
    'ō' => 'o1',
    'ū' => 'u1',
    'ǖ' => 'v1',
    'Ā' => 'A1',
    'Ē' => 'E1',
    'Ī' => 'I1',
    'Ō' => 'O1',
    'Ū' => 'U1',
    'Ǖ' => 'V1',
    'á' => 'a2',
    'é' => 'e2',
    'í' => 'i2',
    'ó' => 'o2',
    'ú' => 'u2',
    'ǘ' => 'v2',
    'Á' => 'A2',
    'É' => 'E2',
    'Í' => 'I2',
    'Ó' => 'O2',
    'Ú' => 'U2',
    'Ǘ' => 'V2',
    'ǎ' => 'a3',
    'ě' => 'e3',
    'ǐ' => 'i3',
    'ǒ' => 'o3',
    'ǔ' => 'u3',
    'ǚ' => 'v3',
    'Ǎ' => 'A3',
    'Ě' => 'E3',
    'Ǐ' => 'I3',
    'Ǒ' => 'O3',
    'Ǔ' => 'U3',
    'Ǚ' => 'V3',
    'à' => 'a4',
    'è' => 'e4',
    'ì' => 'i4',
    'ò' => 'o4',
    'ù' => 'u4',
    'ǜ' => 'v4',
    'À' => 'A4',
    'È' => 'E4',
    'Ì' => 'I4',
    'Ò' => 'O4',
    'Ù' => 'U4',
    'Ǜ' => 'V4',
    'ü' => 'v',
    'Ü' => 'V'
  }

  def self.accent_map
    unless @accent_map
      @accent_map = {}
      stars = ('a*i a*o e*i ia* ia*o ie* io* iu* ' +
               'A*I A*O E*I IA* IA*O IE* IO* IU* ' +
               'o*u ua* ua*i ue* ui* uo* üe* ' +
               'O*U UA* UA*I UE* UI* UO* ÜE* ' +
               'A* E* I* O* U* Ü* ' +
               'a* e* i* o* u* ü*').split(' ')
      nostars = stars.map {|s| s.sub(/\*/, '')}

      nostars.each_with_index do |k, i| 
        @accent_map[k] = stars[i] 
      end
    end
    @accent_map   
  end

  def self.replacement_for(word, tone)
    word = word.gsub('v', 'ü').gsub('V', 'Ü')
    accent_map.each_pair do |base, vowel|
      if word.index(base)
        vowel_char = vowel.scan(/\w\*/)[0]
        vowel_num = Vowels[vowel_char]
        accented_vowel_char = Pinyin[tone][vowel_num]
        return replaced_word = word.sub(base, vowel).sub(vowel_char, accented_vowel_char)
      end 
    end
    match
  end

  def self.to_pinyin(string) 
    string.scan(Regex).each do |word, tone|
      string = string.sub(word + tone, replacement_for(word, tone))
    end
    string 
  end

  def self.from_pinyin(string)
    string.scan(AntiRegex).each do |match|
      pinyin = match[0]
      string = string.sub(pinyin, AntiPinyin[pinyin])
    end
    string
  end

  # instance methods

  def to_pinyin
    Pinyin::to_pinyin(self.to_s)
  end

  def from_pinyin
    Pinyin::from_pinyin(self.to_s)
  end

end

class String
  def to_pinyin
    Pinyin::to_pinyin(self)
  end

  def from_pinyin
    Pinyin::from_pinyin(self)
  end
end